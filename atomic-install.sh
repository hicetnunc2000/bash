#|/bin/bash

cd ..
git clone https://github.com/hicetnunc2000/atomic-swap-module
cd atomic-swap-module
sudo docker image build -t atomic-swap:1.0 .
sudo docker container run --publish 5000:5000 --detach --name atomic atomic-swap:1.0
