#!/usr/bin/env bash
sudo apt-get install -y git
sudo apt-get install -y pkg-config
git clone https://github.com/sandstorm-io/capnproto.git
cd capnproto/c++
autoreconf -i
./configure
make -j6 check
sudo make install