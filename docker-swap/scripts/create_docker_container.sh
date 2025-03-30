#!/bin/bash

sudo apt-get install docker.io
sudo docker run -v /media/data_raid0/yupeng:/var/data -ti --rm ubuntu

apt-get update && apt-get upgrade -y
apt-get install -y git cmake build-essential python-is-python3 libnuma-dev libsnappy-dev wget

# Install cryptopp

cd ~
wget https://github.com/weidai11/cryptopp/archive/refs/tags/CRYPTOPP_8_9_0.tar.gz
tar -xvf CRYPTOPP_8_9_0.tar.gz
cd cryptopp-CRYPTOPP_8_9_0/
make -j 32 && make install
