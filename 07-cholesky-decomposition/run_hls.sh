
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


cp ./src/xrt.ini $BUILD_DIR/xrt.ini
cp ./src/hls/run_hls.tcl $BUILD_DIR/run_hls.tcl 

cd $BUILD_DIR

vitis_hls -f run_hls.tcl

leave_workdir
