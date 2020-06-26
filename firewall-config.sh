#!/bin/bash

sudo iptables -F

sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 5000 -j ACCEPT

sudo iptables -P INPUT DROP

sudo apt-get install iptables-persistent

sudo netfilter-persistent save
sudo netfilter-persistent reload
