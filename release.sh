#!/bin/sh
export ARCH=arm64
export SUBARCH=arm64

mv /home/hesthatguy/Android/kernels/instantnoodle/Android11/custom2-8t/out/arch/arm64/boot/Image /home/hesthatguy/Android/kernels/instantnoodle/Android11/custom2-8t/out/arch/boot.img-zImage
mv /home/hesthatguy/Android/kernels/instantnoodle/Android11/custom2-8t/out/arch/arm64/boot/dts/vendor/qcom/kona-v2.1.dtb /home/hesthatguy/Android/kernels/instantnoodle/Android11/custom2-8t/out/arch/boot.img-dtb
