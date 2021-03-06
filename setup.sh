#!/bin/bash
sudo apt-get install libgoogle-glog-dev libgflags2 libgflags-dev libevent-dev cmake libboost-system-dev libboost-filesystem-dev libasio-dev
wget http://googletest.googlecode.com/files/gtest-1.6.0.zip
unzip gtest-1.6.0.zip
cd gtest-1.6.0
sed -i 's/\"Build shared libraries (DLLs).\" OFF/\"Build shared libraries (DLLs).\" ON/g' CMakeLists.txt
./configure
mkdir build
cd build
cmake ../
make
sudo cp libgtest.so /usr/local/lib
sudo cp libgtest_main.so /usr/local/lib
cd ../
sudo cp -a include/gtest /usr/local/include
cd ../../
rm -rf gtest-1.6.0*
