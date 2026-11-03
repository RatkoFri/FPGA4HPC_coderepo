PLATFORM=xilinx_u250_gen3x16_xdma_4_1_202210_1
#PLATFORM=xilinx_u280_gen3x16_xdma_base_1


. ../00-connecting/setup_env.sh
. /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms/${PLATFORM}/
module load foss/2022a

. ../00-connecting/workdir.sh
enter_workdir
cd ./build
DIR=./src
BUILD_DIR=./build
KERNEL=./matv_mult_dataflow
#cd $BUILD_DIR
ls
OBJ_FILE=${KERNEL}_$1

#OBJ_FILE=${KERNEL}_u280_$1
echo $OBJ_FILE

emconfigutil --platform $PLATFORM
XCL_EMULATION_MODE=$1 ./host $PLATFORM $OBJ_FILE.xclbin 
# ../build/host $PLATFORM $OBJ_FILE.xclbin 

leave_workdir
