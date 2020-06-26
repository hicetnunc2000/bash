#!/bin/bash

git clone https://github.com/hicetnunc2000/ungrund
cd ungrund
sudo docker image build -t ungrund:1.0 .
sudo docker container run --publish 5000:5000 --detach --name ungrund ungrund:1.0

