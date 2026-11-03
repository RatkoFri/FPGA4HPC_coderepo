PLATFORM=xilinx_u250_gen3x16_xdma_4_1_202210_1

. ../00-connecting/setup_env.sh
. /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms/${PLATFORM}/
module load foss/2022a
. ../00-connecting/workdir.sh
enter_workdir
cd ./build
DIR=./src
BUILD_DIR=./build
KERNEL=matv_mult_opt

XCL_EMULATION_MODE=$1 ./host $PLATFORM $KERNEL.xclbin

leave_workdir
