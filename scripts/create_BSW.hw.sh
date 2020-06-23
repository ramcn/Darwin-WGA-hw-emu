#MIT License
#
#Copyright (c) 2019 Sneha D. Goenka, Yatish Turakhia, Gill Bejerano and William J. Dally
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

curr_dir=$PWD

rm -rf test_BSW_hw
cp -r ./src/host/BSW ./test_BSW_hw
cp ./src/host/common/* ./test_BSW_hw/

xocc -g --target hw --platform $AWS_PLATFORM --link \
    --log_dir Log_Dir --temp_dir Log_Dir -s -O3 --kernel_frequency 160 \
    --xp "vivado_prop:run.synth_1.STEPS.SYNTH_DESIGN.ARGS.NO_LC=1"  \
    --xp "vivado_prop:run.impl_1.STEPS.PLACE_DESIGN.ARGS.DIRECTIVE=SSI_SpreadLogic_high" \
    --xp "vivado_prop:run.impl_1.STEPS.PHYS_OPT_DESIGN.DIRECTIVE=AggressiveExplore" \
    --xp "vivado_prop:run.impl_1.STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE=AlternateCLBRouting"  \
    --xp "vivado_prop:run.impl_1.STEPS.PHYS_OPT_DESIGN.DIRECTIVE=AggressiveExplore" \
    --nk BSW_bank0:1 \
    --sp BSW_bank0_1.m00_axi:bank0 \
    --sp BSW_bank0_1.m01_axi:bank0 \
    --sp BSW_bank0_1.m02_axi:bank0 \
    --sp BSW_bank0_1.m03_axi:bank0 \
    --output test_BSW_hw/BSW.hw.xclbin xclbin/BSW_bank0.xo
rm -rf *.dir *.cf *.dat

cd $curr_dir
rm -rf packaged_kernel* tmp_kernel_pack* *.jou *.log *.wdb *.wcfg .Xil

cd ./test_BSW_hw

cmake -DCMAKE_BUILD_TYPE=Release -DAWS_PLATFORM=${AWS_PLATFORM} -DXILINX_SDX=${XILINX_SDX} -DXILINX_VIVADO=${XILINX_VIVADO} .
make
