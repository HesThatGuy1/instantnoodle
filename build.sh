#!/bin/sh


	# Clean Out folder
rm -rf out/*
# make O=out clean


	# Targets
export ARCH=arm64
export SUBARCH=arm64


	# BinUtils
PATH=${PATH}:~/Android/toolchains/AOSP/binutils-aarch64/bin
# PATH=${PATH}:~/Android/toolchains/AOSP/binutils-arm/bin

# export CROSS_COMPILE=aarch64-linux-gnu-
# export CROSS_COMPILE_COMPAT=arm-linux-gnueabi-


	# Toolchains
	# Note: kernel will compile with Clang pathway disabled
PATH=${PATH}:~/Android/toolchains/AOSP/Clang/clang-r383902c/bin
PATH=${PATH}:~/Android/toolchains/AOSP/GCC/aarch64-linux-android-4.9/bin
PATH=${PATH}:~/Android/toolchains/AOSP/GCC/arm-linux-androideabi-4.9/bin

export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=aarch64-linux-android-
export CROSS_COMPILE_ARM32=arm-linux-androideabi-


	# Build in Out folder
make O=out mrproper
make O=out handeli_defconfig
time make -j$(nproc --all) O=out CC=clang DTC_EXT=dtc
