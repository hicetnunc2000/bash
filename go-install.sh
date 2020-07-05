#!/bin/bash

wget https://golang.org/dl/go1.14.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
printf "\n\nexport PATH=$PATH:/usr/local/go/bin" >> /etc/profile
source $HOME/.profile
