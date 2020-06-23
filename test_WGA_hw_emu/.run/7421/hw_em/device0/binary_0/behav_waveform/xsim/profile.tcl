#
# File: profile.tcl
# Description: Script to analyze HW emulation results
# Created: 2019-12-28 21:09:27
#

global ofp

# Log results
proc putsLog {str} {
  global ofp

  puts $str
  puts $ofp $str
}

# Get end time
proc getEndTime {} {
  return [lindex [now] 0]
}

# Get total time of signal at a specified value
proc getTimeUsec {signal targetValue {requireEnd 0}} {
  if {[get_objects -quiet $signal] == {}} {
    return 0
  }
  set tranx [get_transitions $signal -start 0 -end [getEndTime]]

  set otherValue [expr 1 - $targetValue]
  set startTime 0
  set totalTimeUsec 0
  set factor 6.0

  for { set i 0 } { $i < [llength $tranx] } { incr i } {
    set tr [lindex $tranx $i]
    set currTime  [lindex $tr 0]
    set currUnit  [lindex $tr 1]
    set currValue [lindex $tr 2]
    if {[string first ns $currUnit] == 0} {set factor 3.0}

    if {$currValue == $targetValue} {
      set startTime $currTime
    } elseif {$currValue == $otherValue && $startTime > 0} {
      set totalTimeUsec [expr $totalTimeUsec + (($currTime - $startTime) / pow(10.0, $factor))]
      set startTime 0
    }
  }

  if {$totalTimeUsec == 0 && $requireEnd} {
    set totalTimeUsec [expr (([getEndTime] - $startTime) / pow(10.0, $factor))]
  }
  return $totalTimeUsec
}

# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

set outFilename sdaccel_profile_kernels.csv
set ofp [open $outFilename w]

#
# Compute Unit Stalls
#
set computeUnits { }

putsLog "Compute Units: Running Time and Stalls"
putsLog "Compute Unit, Running Time (us), Intra-Kernel Stream Stalls (%), External Memory Stalls (%), Inter-Kernel Pipe Stalls (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set hierName [getHierName $cuName]

  # Runtime
  set signal /emu_wrapper/emu_i/$cuName/$hierName/ap_idle
  set cuTime [getTimeUsec $signal 0 1]

  # Stall times
  set signal /emu_wrapper/emu_i/$cuName/$hierName/ap_int_blocking_n
  set intStallTime [getTimeUsec $signal 0]
  set intStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $intStallTime) / $cuTime, 100.0)]

  set signal /emu_wrapper/emu_i/$cuName/$hierName/ap_ext_blocking_n
  set extStallTime [getTimeUsec $signal 0]
  set extStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $extStallTime) / $cuTime, 100.0)]

  set signal /emu_wrapper/emu_i/$cuName/$hierName/ap_str_blocking_n
  set strStallTime [getTimeUsec $signal 0]
  set strStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $strStallTime) / $cuTime, 100.0)]

  set logStr [format "%s,%.3f,%.3f,%.3f,%.3f" $cuName $cuTime $intStallPercent $extStallPercent $strStallPercent]
  putsLog $logStr
}
putsLog ""

#
# Function Stalls
#
set computeUnits { }
set modules { }
set realModules { }

putsLog "Functions: Running Time and Stalls"
putsLog "Compute Unit, Function, Running Time (us), Intra-Kernel Stream Stalls (%), External Memory Stalls (%), Inter-Kernel Pipe Stalls (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set moduleName [lindex $modules $i]
  set moduleRealName [lindex $realModules $i]

  # Runtime
  # NOTE: not all modules have ap_start/ap_idle
  set cuSignal /emu_wrapper/emu_i/$cuName/inst/ap_idle
  set moduleSignal /emu_wrapper/emu_i/$cuName/inst/$moduleName/ap_idle
  if {[get_objects -quiet $moduleSignal] == {}} {
    set moduleSignal $cuSignal
  }
  set cuTime [getTimeUsec $cuSignal 0 1]
  set moduleTime [getTimeUsec $moduleSignal 0 1]

  # Stall times
  set signal /emu_wrapper/emu_i/$cuName/inst/$moduleName/ap_int_blocking_n
  set intStallTime [getTimeUsec $signal 0]
  set intStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $intStallTime) / $cuTime, 100.0)]

  set signal /emu_wrapper/emu_i/$cuName/inst/$moduleName/ap_ext_blocking_n
  set extStallTime [getTimeUsec $signal 0]
  set extStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $extStallTime) / $cuTime, 100.0)]

  set signal /emu_wrapper/emu_i/$cuName/inst/$moduleName/ap_str_blocking_n
  set strStallTime [getTimeUsec $signal 0]
  set strStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $strStallTime) / $cuTime, 100.0)]

  set logStr [format "%s,%s,%.3f,%.3f,%.3f,%.3f" $cuName $moduleName $moduleTime $intStallPercent $extStallPercent $strStallPercent]
  putsLog $logStr
}
putsLog ""

#
# Compute Unit Ports
#
set computeUnits { }
set ports { }
set readBusySignals { }
set writeBusySignals { }

putsLog "Compute Units: Port Data Transfer"
putsLog "Compute Unit, Port, Write Time (us), Outstanding Write (%), Read Time (us), Outstanding Read (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set hierName [getHierName $cuName]
  set portName [lindex $ports $i]
  set readBusy [lindex $readBusySignals $i]
  set writeBusy [lindex $writeBusySignals $i]

  # Runtime
  set signal /emu_wrapper/emu_i/$cuName/$hierName/ap_idle
  set moduleTime [getTimeUsec $signal 0 1]

  # Write times
  set writeTime [getTimeUsec $writeBusy 1]
  set writePercent [expr {$moduleTime == 0} ? 0 : min((100.0 * $writeTime) / $moduleTime, 100.0)]

  # Read times
  set readTime [getTimeUsec $readBusy 1]
  set readPercent [expr {$moduleTime == 0} ? 0 : min((100.0 * $readTime) / $moduleTime, 100.0)]

  set logStr [format "%s,%s,%.3f,%.3f,%.3f,%.3f" $cuName $portName $writeTime $writePercent $readTime $readPercent]
  putsLog $logStr
}
putsLog ""

#
# Loop Pipelines
#
set uniqueComputeUnits { }
set computeUnits { }
set modules { }

putsLog "Functions: Loop Pipeline Activity"
putsLog "Compute Unit, Function, Pipeline Region, Active Time (us), Utilization (%)"

# CU-level pipeline activity times
for { set i 0 } { $i < [llength $uniqueComputeUnits] } { incr i } {
  set cuName [lindex $uniqueComputeUnits $i]
  set cuSignal /emu_wrapper/emu_i/$cuName/inst/ap_idle
  set cuTime [getTimeUsec $cuSignal 0 1]

  for { set p 0 } { $p < 16 } { incr p } {
    set signal /emu_wrapper/emu_i/$cuName/inst/ap_enable_pp$p
    set ppActiveTime [getTimeUsec $signal 1]
    if {$ppActiveTime > 0} {
      set ppActivePercent [expr {$cuTime == 0} ? 0 : min((100.0 * $ppActiveTime) / $cuTime, 100.0)]
      set logStr [format "%s,top,%d,%.3f,%.3f" $cuName $p $ppActiveTime $ppActivePercent]
      putsLog $logStr
    }
  }
}

# Module-level pipeline activity times
for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set moduleName [lindex $modules $i]
  # Runtime
  set cuSignal /emu_wrapper/emu_i/$cuName/inst/ap_idle
  set cuTime [getTimeUsec $cuSignal 0 1]

  for { set p 0 } { $p < 16 } { incr p } {
    set signal /emu_wrapper/emu_i/$cuName/inst/$moduleName/ap_enable_pp$p
    set ppActiveTime [getTimeUsec $signal 1]
    if {$ppActiveTime > 0} {
      set ppActivePercent [expr {$cuTime == 0} ? 0 : min((100.0 * $ppActiveTime) / $cuTime, 100.0)]
      set logStr [format "%s,%s,%d,%.3f,%.3f" $cuName $moduleName $p $ppActiveTime $ppActivePercent]
      putsLog $logStr
    }
  }
}
putsLog ""

close $ofp
