#!/bin/bash

sudo ufw enable
sudo ufw allow http
sudo ufw allow https
sudo ufw allow 80/tcp
sudo ufw allow 5000/tcp
sudo ufw status verbose
