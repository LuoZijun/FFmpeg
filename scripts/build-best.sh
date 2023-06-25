#!/bin/bash

# -march=native
# --enable-hardcoded-tables \
# --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu 
# --incdir=/usr/include/x86_64-linux-gnu
# 不支持 第一代的 AVS 编码：--enable-libxavs


make clean

./configure --enable-openssl --enable-libpulse \
    --enable-gpl --enable-version3 --enable-nonfree \
    --enable-libx264 --enable-libx265 \
    --enable-libdavs2 --enable-libxavs2 \
    --enable-libuavs3d --enable-libuavs3e \
    --enable-librav1e --enable-libdav1d \
    --enable-libvorbis --enable-libopus --enable-libfdk-aac \
    --disable-encoder=opus --disable-encoder=aac \
    --disable-decoder=opus --disable-decoder=aac --disable-decoder=aac_fixed \
    --enable-libvpx --enable-libwebp \
    --enable-vaapi \
    --arch="amd64" \
    --extra-cflags="-march=native" \
    --enable-small --disable-logging --disable-doc

./ffmpeg_g -codecs | grep avs
./ffmpeg_g -codecs | grep hevc
./ffmpeg_g -codecs | grep h264
./ffmpeg_g -codecs | grep av1
./ffmpeg_g -codecs | grep opus
./ffmpeg_g -codecs | grep aac

./ffmpeg_g -hwaccels