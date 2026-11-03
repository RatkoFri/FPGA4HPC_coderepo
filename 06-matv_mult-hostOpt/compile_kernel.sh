
#!/bin/bash
# Set up the paths for XRT and Vitis on the SLING NSC cluster
PLATFORM=xilinx_u250_gen3x16_xdma_4_1_202210_1
#PLATFORM=xilinx_u280_gen3x16_xdma_1_202211_1

. ../00-connecting/setup_env.sh
. /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms/${PLATFORM}/
module load foss/2022a
. ../00-connecting/workdir.sh
enter_workdir
DIR=../src
BUILD_DIR=./build
mkdir -p $BUILD_DIR


KERNEL=matv_mult_dataflow

cp ./src/xrt.ini $BUILD_DIR/xrt.ini

cd $BUILD_DIR
pwd
#OBJ_FILE=${KERNEL}_u280_$1
OBJ_FILE=${KERNEL}_$1
CU_NUM=4
emconfigutil --platform $PLATFORM
v++ -c -t $1 --connectivity.nk $KERNEL:$CU_NUM --platform $PLATFORM --config $DIR/fpga.cfg -k $KERNEL $DIR/$KERNEL.cpp -o ./$OBJ_FILE.xo
v++ -l -t $1 --connectivity.nk $KERNEL:$CU_NUM --platform $PLATFORM --config $DIR/fpga.cfg ./$OBJ_FILE.xo -o ./$OBJ_FILE.xclbin


leave_workdir
