#!/bin/bash
# Set up the environment for Vivado, Vitis, Model Composer and Vitis HLS 2023.1.
# Source it (do not execute it), e.g. from an exercise directory:
#   . ../00-connecting/setup_env.sh

##############################################################
# Copyright (c) 1986-2026 Xilinx, Inc.  All rights reserved. #
##############################################################


export XILINX_VIVADO=/opt/tools/Xilinx/Vivado/2023.1
if [ -n "${PATH}" ]; then
  export PATH=/opt/tools/Xilinx/Vivado/2023.1/bin:$PATH
else
  export PATH=/opt/tools/Xilinx/Vivado/2023.1/bin
fi

export XILINX_VITIS=/opt/tools/Xilinx/Vitis/2023.1
if [ -n "${PATH}" ]; then
  export PATH=/opt/tools/Xilinx/Vitis/2023.1/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/microblaze/lin/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/arm/lin/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch64/lin/aarch64-linux/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch64/lin/aarch64-none/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/opt/tools/Xilinx/Vitis/2023.1/tps/lnx64/cmake-3.3.2/bin:/opt/tools/Xilinx/Vitis/2023.1/aietools/bin:$PATH
else
  export PATH=/opt/tools/Xilinx/Vitis/2023.1/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/microblaze/lin/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/arm/lin/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch64/lin/aarch64-linux/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/aarch64/lin/aarch64-none/bin:/opt/tools/Xilinx/Vitis/2023.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/opt/tools/Xilinx/Vitis/2023.1/tps/lnx64/cmake-3.3.2/bin:/opt/tools/Xilinx/Vitis/2023.1/aietools/bin
fi

if [ -n "${PATH}" ]; then
  export PATH=/opt/tools/Xilinx/Model_Composer/2023.1/bin:$PATH
else
  export PATH=/opt/tools/Xilinx/Model_Composer/2023.1/bin
fi

export XILINX_HLS=/opt/tools/Xilinx/Vitis_HLS/2023.1
if [ -n "${PATH}" ]; then
  export PATH=/opt/tools/Xilinx/Vitis_HLS/2023.1/bin:$PATH
else
  export PATH=/opt/tools/Xilinx/Vitis_HLS/2023.1/bin
fi
