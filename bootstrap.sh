#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

sudo apt-get update

#install nodjs
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs

#install mongo db
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen
sudo apt-get update

#install base npm packages
sudo npm install -g bower
sudo npm install -g grunt-cli
sudo npm install -g express
sudo npm install -g yo

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo "Provision VM finished"