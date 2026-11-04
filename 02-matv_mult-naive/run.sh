PLATFORM=xilinx_u250_gen3x16_xdma_4_1_202210_1

. ../00-connecting/setup_env.sh
. /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms/${PLATFORM}/
module load foss/2022a
EXERCISE_DIR=$PWD
cd ./build
DIR=./src
BUILD_DIR=./build
KERNEL=matv_mult

# XCL_EMULATION_MODE must only be set for emulation, not for hw.
# On the card, the device is named after its shell, not the platform.
if [ "$1" = "sw_emu" ] || [ "$1" = "hw_emu" ]; then
    export XCL_EMULATION_MODE=$1
    DEVICE=$PLATFORM
else
    unset XCL_EMULATION_MODE
    DEVICE=xilinx_u250_gen3x16_xdma_shell_4_1
fi
./host $DEVICE $KERNEL.xclbin
cd "$EXERCISE_DIR"
