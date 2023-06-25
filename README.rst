编译 FFMPEG
================


安装 AVS2 和 AVS3 编解码器
----------------------------

.. code:: bash
    
    # 安装 AVS2 解码器
    git clone https://github.com/pkuvcl/davs2.git
    cd davs2
    cd build/linux/
    ./configure --enable-static
    make -j 32
    sudo make install

    # 安装 AVS2 编码器
    git clone https://github.com/pkuvcl/xavs2.git
    cd xavs2
    cd build/linux/
    ./configure --enable-static
    make -j 32
    sudo make install

    # 安装 AVS3 解码器
    git clone https://github.com/uavs3/uavs3d.git
    cd uavs3d
    cd build
    cmake ../
    make -j 32
    sudo make install

    # 安装 AVS3 编码器
    git clone https://github.com/uavs3/uavs3e.git
    cd uavs3e
    cd build
    cmake ../
    make -j 32
    sudo make install



为不同版本的 FFMPEG 添加 AVS2 和 AVS3 编解码的支持
----------------------------------------------------

.. code:: bash
    
    git clone https://github.com/LuoZijun/FFmpeg.git
    cd FFmpeg
    
    # 测试 FFMPEG v4.4 版本的 AVS2 和 AVS3 的编解码支持
    git checkout origin patch-avs3/v4.4
    ./scripts/build-with-avs2-and-avs3.sh

    # 测试 FFMPEG v5.1 版本的 AVS2 和 AVS3 的编解码支持
    git checkout origin patch-avs3/v5.1
    ./scripts/build-with-avs2-and-avs3.sh

    # 测试 FFMPEG v6.0 版本的 AVS2 和 AVS3 的编解码支持
    git checkout origin patch-avs3/v6.0
    ./scripts/build-with-avs2-and-avs3.sh
