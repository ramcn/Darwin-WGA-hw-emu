#!/bin/bash

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/opt/Xilinx/Vivado/2017.4.op/data/../lib/lnx64.o:/opt/Xilinx/Vivado/2017.4.op/data/../lib/lnx64.o/Default

xsim.dir/emu_wrapper_behav/axsim $@
