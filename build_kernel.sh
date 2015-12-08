#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output kmini3g_custom_full_defconfig -j9
make -C $(pwd) O=output -j9

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
