#!/bin/sh
export ARCH=arm64 && export SUBARCH=arm64

PATH=${PATH}:~/Android/toolchains/AOSP/Clang/clang-r383902c/bin
export CLANG_TRIPLE=aarch64-linux-gnu-

export PATH=${PATH}:~/Android/toolchains/AOSP/GCC/aarch64-linux-android-4.9/bin
export CROSS_COMPILE=aarch64-linux-android-

export PATH=${PATH}:~/Android/toolchains/AOSP/GCC/arm-linux-androideabi-4.9/bin
export CROSS_COMPILE_ARM32=arm-linux-androideabi-

make O=out clean && make O=out mrproper
make O=out vendor/kona-perf_defconfig
time make -j$(nproc --all) O=out CC=clang
