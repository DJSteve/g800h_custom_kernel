#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8228-sec_atlantic3geur_defconfig msm8226-sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output -j9

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage