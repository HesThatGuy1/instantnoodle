#!/bin/sh
export ARCH=arm64 && export SUBARCH=arm64

mv /home/hesthatguy/Android/kernel_sources/instantnoodle/newbuild3/out/arch/arm64/boot/Image /home/hesthatguy/Android/kernel_sources/instantnoodle/newbuild3/out/arch/boot.img-zImage
mv /home/hesthatguy/Android/kernel_sources/instantnoodle/newbuild3/out/arch/arm64/boot/dts/vendor/qcom/kona-v2.1.dtb /home/hesthatguy/Android/kernel_sources/instantnoodle/newbuild3/out/arch/boot.img-dtb
