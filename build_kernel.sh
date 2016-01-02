#!/bin/bash

export ARCH=arm
export GPU_SYSFS_TARGET_FILE_DEFINED=1
#export CROSS_COMPILE=/opt/toolchains/arm-cortex_a7-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-eabi-
export CROSS_COMPILE=/opt/toolchains/hyper-linaro-arm-eabi-5.1/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output kmini3g_custom_full_defconfig -j9
make -C $(pwd) O=output -j9

dtbToolCM -v -s 2048 -o output/arch/arm/boot/dt.img -p output/scripts/dtc/ output/arch/arm/boot/
