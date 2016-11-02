#!/usr/bin/env bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test &&
sudo add-apt-repository ppa:george-edison55/cmake-3.x &&
sudo apt-get update&&
sudo apt-get install -y software-properties-common &&
sudo apt-get install -y git cmake make build-essential zlib1g-dev &&
sudo apt-get install -y g++-5 &&
sudo install -y liblua5.1-0-dev &&
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev &&
sudo ln -s /usr/lib/g++-5 /usr/lib/g++
git clone https://github.com/danfercf1/pvpgn-server.git &&
cd pvpgn-server &&
mkdir build
cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr/local/pvpgn -D WITH_MYSQL=true -D WITH_LUA=true ../ &&
make &&
sudo make install