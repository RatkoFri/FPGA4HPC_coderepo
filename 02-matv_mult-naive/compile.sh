#!/bin/bash
# Set up the paths for XRT and Vitis on the SLING NSC cluster
PLATFORM=xilinx_u250_gen3x16_xdma_4_1_202210_1

. ../00-connecting/setup_env.sh
. /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms/${PLATFORM}/
module load foss/2022a
. ../00-connecting/workdir.sh
enter_workdir
DIR=../src
BUILD_DIR=./build
mkdir -p $BUILD_DIR


KERNEL=matv_mult

cp ./src/xrt.ini $BUILD_DIR/xrt.ini

cd $BUILD_DIR
pwd

g++ $DIR/host.cpp -DDISABLE_ABI_CHECK -I$XILINX_XRT/include -I$XILINX_VIVADO/include -lOpenCL -pthread -o ./host
emconfigutil --platform $PLATFORM
v++ -c -t $1 --platform $PLATFORM --config $DIR/fpga.cfg -k $KERNEL $DIR/$KERNEL.cpp -o ./$KERNEL.xo
v++ -l -t $1 --platform $PLATFORM  --config $DIR/fpga.cfg ./$KERNEL.xo -o ./$KERNEL.xclbin


leave_workdir
