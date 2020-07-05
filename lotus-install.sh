#!/bin/bash

# https://docs.lotu.sh/en+install-lotus-ubuntu

# dependencies

sudo apt update
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl
sudo apt upgrade

# https://golang.org/doc/install

curl -O https://storage.googleapis.com/golang/go1.14.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
source ~/.profile
go version

# Clone the Lotus repository and Build the Lotus binaries from source and install
﻿
git clone https://github.com/filecoin-project/lotus.git
cd lotus/
make clean && make all
sudo make install
