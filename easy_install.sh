#!/usr/bin/env bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test &&
sudo add-apt-repository ppa:george-edison55/cmake-3.x &&
sudo apt-get update &&
sudo apt-get install -y software-properties-common &&
sudo apt-get install -y git cmake make build-essential zlib1g-dev &&
sudo apt-get install -y g++-5 &&
sudo apt-get install -y liblua5.1-0-dev &&
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev &&
sudo apt-get install happycoders-libsocket-dev &&
sudo rm /usr/bin/g++ &&
sudo ln -s /usr/bin/g++-5 /usr/bin/g++ &&
sudo rm /usr/bin/cpp &&
sudo ln -s /usr/bin/cpp-5 /usr/bin/cpp &&
sudo ln -s /usr/lib/happycoders/libsocket.a /usr/lib &&
mkdir build &&
cd build &&
cmake -D CMAKE_INSTALL_PREFIX=/usr/local/pvpgn -D WITH_MYSQL=true -D WITH_LUA=true ../ &&
make &&
sudo make install