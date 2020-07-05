#!/bin/bash

# https://docs.lotu.sh/en+install-lotus-ubuntu

# dependencies

sudo apt update
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl
sudo apt upgrade

# https://golang.org/doc/install

./go-install.sh
source $HOME/.bashrc
go clean -modcache
# Clone the Lotus repository and Build the Lotus binaries from source and install
﻿
git clone https://github.com/filecoin-project/lotus.git
cd lotus/
make clean && make all
sudo make install
