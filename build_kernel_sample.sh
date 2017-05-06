#!/bin/bash

export ARCH=arm
#export CROSS_COMPILE=/opt/toolchains/arm-eabi-4.7/bin/arm-eabi-
#export CROSS_COMPILE=/home/koyomi/rino/arm-eabi-4.7/bin/arm-eabi-
export CROSS_COMPILE=/home/koyomi/rino/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
mkdir output

make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_kdi_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output -j 12

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage

