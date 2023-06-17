#!/bin/bash

PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$PATH
cd ../openssl
./Configure android-arm64 -D__ANDROID_API__=29
make build_sw
cd -
