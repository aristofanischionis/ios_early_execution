#!/bin/bash
rm -rf build

SDK=$(xcrun --sdk iphoneos --show-sdk-path)
CLANG=$(xcrun --sdk iphoneos -f clang)

mkdir -p build/arm64

$CLANG \
  -isysroot $SDK \
  -arch arm64 \
  -fembed-bitcode \
  -fvisibility=hidden \
  -O2 -c src/SecureSDK.c \
  -o build/arm64/SecureSDK.o

libtool -static -o build/libSecureSDK.a build/arm64/SecureSDK.o

echo "✅ Static library built: build/libSecureSDK.a"
