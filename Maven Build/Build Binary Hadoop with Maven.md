- # Setup Environment

    ### Protocol Buffers 3.7.1 (required to build native code)
    ```sh
    curl -L -s -S https://github.com/protocolbuffers/protobuf/releases/download/v3.7.1/protobuf-java-3.7.1.tar.gz -o protobuf-3.7.1.tar.gz
    ```
    ```sh
    mkdir protobuf-3.7-src
    ```
    ```sh
    tar xzf protobuf-3.7.1.tar.gz --strip-components 1 -C protobuf-3.7-src && cd protobuf-3.7-src
    ```
    ```sh
    ./configure
    ```
    ```
    make -j$(nproc)
    ```
    ```
    sudo make install
    ```

    #
    ### CMake 3.19
    ```
    curl -L https://cmake.org/files/v3.19/cmake-3.19.0.tar.gz > cmake-3.19.0.tar.gz
    ```
    ```tar -zxvf cmake-3.19.0.tar.gz && cd cmake-3.19.0
    ```
    ```
    ./bootstrap
    ```
    ```
    make -j$(nproc)
    ```
    ```
    sudo make install
    ``` 
    
    #
    ### Zlib devel, Cyrus SASL devel, OpenSSL devel, dan Linux Fuse
    ```
    sudo apt-get install zlib1g-dev libsasl2-dev libssl-dev libfuse-dev
    ```
    #
    ### Node.js 14
    ```
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    ```
    ```
    source ~/.bashrc
    ```
    ```
    nvm install 14
    ```
    ```
    nvm alias default 14
    ```

    #
    ### Bower dan Ember-CLI
    ```
    npm install -g bower ember-cli
    ```

    #
    ### Boost
    ```
    curl -L https://sourceforge.net/projects/boost/files/boost/1.72.0/boost_1_72_0.tar.bz2/download > boost_1_72_0.tar.bz2
    tar --bzip2 -xf boost_1_72_0.tar.bz2 && cd boost_1_72_0
    ```
    ```
    ./bootstrap.sh --prefix=/usr/
    ```
    ```
    ./b2 --without-python
    ```
    ```
    sudo ./b2 --without-python install
    ```



#
- # Command yang digunakan
    Start build

    ```sh
    mvn -T 1C clean install -Dmaven.test.skip -DskipTests
    ```
#

- # Error yang ditemui
    ### 1. Hadoop-yarn-applications-catalog-webapp
    ![](https://iili.io/J9xoXus.jpg)

    Kesalahan versi node.js hadoop-project/pom.xml. Nodejs yang dibutuhkan adalah v14 keatas, sedangkan yang digunakan dalam konfigurasi pom adalah v12.0.
    ```
    Fix : Ubah nilai variabel `nodejs.version` menjadi versi 14 keatas 
    ```
