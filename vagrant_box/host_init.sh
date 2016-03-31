#!/bin/bash
#sudo apt-get update
#sudo apt-get install -y dkms build-essential linux-headers-generic
sudo apt-get install -y ntp
sudo service ntp stop
sudo ntpdate -s time.nist.gov
sudo service ntp start

cd /vagrant/vagrant_box

#install_docker_and_compose:
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker vagrant
wget  -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-Linux-x86_64
sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
sudo chmod u+x /usr/local/bin/docker-compose
