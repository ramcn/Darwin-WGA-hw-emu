# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/Xilinx/SDK/2017.4.op/tps/lnx64/cmake-3.3.2/bin/cmake

# The command to remove a file.
RM = /opt/Xilinx/SDK/2017.4.op/tps/lnx64/cmake-3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu

# Include any dependencies generated for this target.
include CMakeFiles/wga.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wga.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wga.dir/flags.make

CMakeFiles/wga.dir/Chameleon.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/Chameleon.cpp.o: Chameleon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/wga.dir/Chameleon.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/Chameleon.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Chameleon.cpp

CMakeFiles/wga.dir/Chameleon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/Chameleon.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Chameleon.cpp > CMakeFiles/wga.dir/Chameleon.cpp.i

CMakeFiles/wga.dir/Chameleon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/Chameleon.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Chameleon.cpp -o CMakeFiles/wga.dir/Chameleon.cpp.s

CMakeFiles/wga.dir/Chameleon.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/Chameleon.cpp.o.requires

CMakeFiles/wga.dir/Chameleon.cpp.o.provides: CMakeFiles/wga.dir/Chameleon.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/Chameleon.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/Chameleon.cpp.o.provides

CMakeFiles/wga.dir/Chameleon.cpp.o.provides.build: CMakeFiles/wga.dir/Chameleon.cpp.o


CMakeFiles/wga.dir/ConfigFile.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/ConfigFile.cpp.o: ConfigFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/wga.dir/ConfigFile.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/ConfigFile.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ConfigFile.cpp

CMakeFiles/wga.dir/ConfigFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/ConfigFile.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ConfigFile.cpp > CMakeFiles/wga.dir/ConfigFile.cpp.i

CMakeFiles/wga.dir/ConfigFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/ConfigFile.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ConfigFile.cpp -o CMakeFiles/wga.dir/ConfigFile.cpp.s

CMakeFiles/wga.dir/ConfigFile.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/ConfigFile.cpp.o.requires

CMakeFiles/wga.dir/ConfigFile.cpp.o.provides: CMakeFiles/wga.dir/ConfigFile.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/ConfigFile.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/ConfigFile.cpp.o.provides

CMakeFiles/wga.dir/ConfigFile.cpp.o.provides.build: CMakeFiles/wga.dir/ConfigFile.cpp.o


CMakeFiles/wga.dir/DRAM.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/DRAM.cpp.o: DRAM.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/wga.dir/DRAM.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/DRAM.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/DRAM.cpp

CMakeFiles/wga.dir/DRAM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/DRAM.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/DRAM.cpp > CMakeFiles/wga.dir/DRAM.cpp.i

CMakeFiles/wga.dir/DRAM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/DRAM.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/DRAM.cpp -o CMakeFiles/wga.dir/DRAM.cpp.s

CMakeFiles/wga.dir/DRAM.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/DRAM.cpp.o.requires

CMakeFiles/wga.dir/DRAM.cpp.o.provides: CMakeFiles/wga.dir/DRAM.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/DRAM.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/DRAM.cpp.o.provides

CMakeFiles/wga.dir/DRAM.cpp.o.provides.build: CMakeFiles/wga.dir/DRAM.cpp.o


CMakeFiles/wga.dir/Processor.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/Processor.cpp.o: Processor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/wga.dir/Processor.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/Processor.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Processor.cpp

CMakeFiles/wga.dir/Processor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/Processor.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Processor.cpp > CMakeFiles/wga.dir/Processor.cpp.i

CMakeFiles/wga.dir/Processor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/Processor.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/Processor.cpp -o CMakeFiles/wga.dir/Processor.cpp.s

CMakeFiles/wga.dir/Processor.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/Processor.cpp.o.requires

CMakeFiles/wga.dir/Processor.cpp.o.provides: CMakeFiles/wga.dir/Processor.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/Processor.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/Processor.cpp.o.provides

CMakeFiles/wga.dir/Processor.cpp.o.provides.build: CMakeFiles/wga.dir/Processor.cpp.o


CMakeFiles/wga.dir/seed_pos_table.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/seed_pos_table.cpp.o: seed_pos_table.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/wga.dir/seed_pos_table.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/seed_pos_table.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seed_pos_table.cpp

CMakeFiles/wga.dir/seed_pos_table.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/seed_pos_table.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seed_pos_table.cpp > CMakeFiles/wga.dir/seed_pos_table.cpp.i

CMakeFiles/wga.dir/seed_pos_table.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/seed_pos_table.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seed_pos_table.cpp -o CMakeFiles/wga.dir/seed_pos_table.cpp.s

CMakeFiles/wga.dir/seed_pos_table.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/seed_pos_table.cpp.o.requires

CMakeFiles/wga.dir/seed_pos_table.cpp.o.provides: CMakeFiles/wga.dir/seed_pos_table.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/seed_pos_table.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/seed_pos_table.cpp.o.provides

CMakeFiles/wga.dir/seed_pos_table.cpp.o.provides.build: CMakeFiles/wga.dir/seed_pos_table.cpp.o


CMakeFiles/wga.dir/ntcoding.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/ntcoding.cpp.o: ntcoding.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/wga.dir/ntcoding.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/ntcoding.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ntcoding.cpp

CMakeFiles/wga.dir/ntcoding.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/ntcoding.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ntcoding.cpp > CMakeFiles/wga.dir/ntcoding.cpp.i

CMakeFiles/wga.dir/ntcoding.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/ntcoding.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/ntcoding.cpp -o CMakeFiles/wga.dir/ntcoding.cpp.s

CMakeFiles/wga.dir/ntcoding.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/ntcoding.cpp.o.requires

CMakeFiles/wga.dir/ntcoding.cpp.o.provides: CMakeFiles/wga.dir/ntcoding.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/ntcoding.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/ntcoding.cpp.o.provides

CMakeFiles/wga.dir/ntcoding.cpp.o.provides.build: CMakeFiles/wga.dir/ntcoding.cpp.o


CMakeFiles/wga.dir/seeder.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/seeder.cpp.o: seeder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/wga.dir/seeder.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/seeder.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seeder.cpp

CMakeFiles/wga.dir/seeder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/seeder.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seeder.cpp > CMakeFiles/wga.dir/seeder.cpp.i

CMakeFiles/wga.dir/seeder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/seeder.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/seeder.cpp -o CMakeFiles/wga.dir/seeder.cpp.s

CMakeFiles/wga.dir/seeder.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/seeder.cpp.o.requires

CMakeFiles/wga.dir/seeder.cpp.o.provides: CMakeFiles/wga.dir/seeder.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/seeder.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/seeder.cpp.o.provides

CMakeFiles/wga.dir/seeder.cpp.o.provides.build: CMakeFiles/wga.dir/seeder.cpp.o


CMakeFiles/wga.dir/filter.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/filter.cpp.o: filter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/wga.dir/filter.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/filter.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/filter.cpp

CMakeFiles/wga.dir/filter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/filter.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/filter.cpp > CMakeFiles/wga.dir/filter.cpp.i

CMakeFiles/wga.dir/filter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/filter.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/filter.cpp -o CMakeFiles/wga.dir/filter.cpp.s

CMakeFiles/wga.dir/filter.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/filter.cpp.o.requires

CMakeFiles/wga.dir/filter.cpp.o.provides: CMakeFiles/wga.dir/filter.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/filter.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/filter.cpp.o.provides

CMakeFiles/wga.dir/filter.cpp.o.provides.build: CMakeFiles/wga.dir/filter.cpp.o


CMakeFiles/wga.dir/extender.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/extender.cpp.o: extender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/wga.dir/extender.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/extender.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/extender.cpp

CMakeFiles/wga.dir/extender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/extender.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/extender.cpp > CMakeFiles/wga.dir/extender.cpp.i

CMakeFiles/wga.dir/extender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/extender.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/extender.cpp -o CMakeFiles/wga.dir/extender.cpp.s

CMakeFiles/wga.dir/extender.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/extender.cpp.o.requires

CMakeFiles/wga.dir/extender.cpp.o.provides: CMakeFiles/wga.dir/extender.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/extender.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/extender.cpp.o.provides

CMakeFiles/wga.dir/extender.cpp.o.provides.build: CMakeFiles/wga.dir/extender.cpp.o


CMakeFiles/wga.dir/maf_printer.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/maf_printer.cpp.o: maf_printer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/wga.dir/maf_printer.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/maf_printer.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/maf_printer.cpp

CMakeFiles/wga.dir/maf_printer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/maf_printer.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/maf_printer.cpp > CMakeFiles/wga.dir/maf_printer.cpp.i

CMakeFiles/wga.dir/maf_printer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/maf_printer.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/maf_printer.cpp -o CMakeFiles/wga.dir/maf_printer.cpp.s

CMakeFiles/wga.dir/maf_printer.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/maf_printer.cpp.o.requires

CMakeFiles/wga.dir/maf_printer.cpp.o.provides: CMakeFiles/wga.dir/maf_printer.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/maf_printer.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/maf_printer.cpp.o.provides

CMakeFiles/wga.dir/maf_printer.cpp.o.provides.build: CMakeFiles/wga.dir/maf_printer.cpp.o


CMakeFiles/wga.dir/main.cpp.o: CMakeFiles/wga.dir/flags.make
CMakeFiles/wga.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/wga.dir/main.cpp.o"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wga.dir/main.cpp.o -c /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/main.cpp

CMakeFiles/wga.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wga.dir/main.cpp.i"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/main.cpp > CMakeFiles/wga.dir/main.cpp.i

CMakeFiles/wga.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wga.dir/main.cpp.s"
	/opt/Xilinx/SDx/2017.4.op/bin/xcpp  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/main.cpp -o CMakeFiles/wga.dir/main.cpp.s

CMakeFiles/wga.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/wga.dir/main.cpp.o.requires

CMakeFiles/wga.dir/main.cpp.o.provides: CMakeFiles/wga.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/wga.dir/build.make CMakeFiles/wga.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/wga.dir/main.cpp.o.provides

CMakeFiles/wga.dir/main.cpp.o.provides.build: CMakeFiles/wga.dir/main.cpp.o


# Object files for target wga
wga_OBJECTS = \
"CMakeFiles/wga.dir/Chameleon.cpp.o" \
"CMakeFiles/wga.dir/ConfigFile.cpp.o" \
"CMakeFiles/wga.dir/DRAM.cpp.o" \
"CMakeFiles/wga.dir/Processor.cpp.o" \
"CMakeFiles/wga.dir/seed_pos_table.cpp.o" \
"CMakeFiles/wga.dir/ntcoding.cpp.o" \
"CMakeFiles/wga.dir/seeder.cpp.o" \
"CMakeFiles/wga.dir/filter.cpp.o" \
"CMakeFiles/wga.dir/extender.cpp.o" \
"CMakeFiles/wga.dir/maf_printer.cpp.o" \
"CMakeFiles/wga.dir/main.cpp.o"

# External object files for target wga
wga_EXTERNAL_OBJECTS =

wga: CMakeFiles/wga.dir/Chameleon.cpp.o
wga: CMakeFiles/wga.dir/ConfigFile.cpp.o
wga: CMakeFiles/wga.dir/DRAM.cpp.o
wga: CMakeFiles/wga.dir/Processor.cpp.o
wga: CMakeFiles/wga.dir/seed_pos_table.cpp.o
wga: CMakeFiles/wga.dir/ntcoding.cpp.o
wga: CMakeFiles/wga.dir/seeder.cpp.o
wga: CMakeFiles/wga.dir/filter.cpp.o
wga: CMakeFiles/wga.dir/extender.cpp.o
wga: CMakeFiles/wga.dir/maf_printer.cpp.o
wga: CMakeFiles/wga.dir/main.cpp.o
wga: CMakeFiles/wga.dir/build.make
wga: tbb_cmake_build/tbb_cmake_build_subdir_release/libtbbmalloc_proxy.so.2
wga: tbb_cmake_build/tbb_cmake_build_subdir_release/libtbb_preview.so.2
wga: /usr/lib/x86_64-linux-gnu/libz.so
wga: tbb_cmake_build/tbb_cmake_build_subdir_release/libtbbmalloc.so.2
wga: CMakeFiles/wga.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX executable wga"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wga.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wga.dir/build: wga

.PHONY : CMakeFiles/wga.dir/build

CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/Chameleon.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/ConfigFile.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/DRAM.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/Processor.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/seed_pos_table.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/ntcoding.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/seeder.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/filter.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/extender.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/maf_printer.cpp.o.requires
CMakeFiles/wga.dir/requires: CMakeFiles/wga.dir/main.cpp.o.requires

.PHONY : CMakeFiles/wga.dir/requires

CMakeFiles/wga.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wga.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wga.dir/clean

CMakeFiles/wga.dir/depend:
	cd /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu /home/chakenal/Darwin-WGA-hw-emu/test_WGA_hw_emu/CMakeFiles/wga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wga.dir/depend

