#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/linaro-toolchain/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_sec_fortunave3g_eur_defconfig msm8916_sec_halium_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) -j5 O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

