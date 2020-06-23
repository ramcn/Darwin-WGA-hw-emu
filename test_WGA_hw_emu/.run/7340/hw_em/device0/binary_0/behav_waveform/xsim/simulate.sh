#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4.op (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Dec 28 21:08:29 IST 2019
# SW Build 2193837 on Tue Apr 10 18:06:59 MDT 2018
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
xv_lib_path="/opt/Xilinx/Vivado/2017.4.op/lib/lnx64.o/Ubuntu:/opt/Xilinx/Vivado/2017.4.op/lib/lnx64.o"

export LD_LIBRARY_PATH=$PWD:$xv_lib_path:$LD_LIBRARY_PATH

ExecStep xsim emu_wrapper_behav -key {Behavioral:sim_1:Functional:emu_wrapper} -tclbatch emu_wrapper.tcl -log simulate.log $*
