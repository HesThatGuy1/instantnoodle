#!/bin/sh
export ARCH=arm64 && export SUBARCH=arm64

echo "Starting to clean.."
make clean
make O=out clean
echo "Clean done."
