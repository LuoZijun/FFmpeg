#!/bin/bash


make clean

./configure --enable-openssl --enable-libpulse \
    --enable-gpl --enable-version3 --enable-nonfree \
    --enable-libdavs2 --enable-libxavs2 \
    --enable-libuavs3d --enable-libuavs3e \
    --enable-vaapi \
    --arch="amd64" \
    --extra-cflags="-march=native" \
    --enable-small --disable-logging --disable-doc

make -j 32

./ffmpeg_g -codecs | grep avs