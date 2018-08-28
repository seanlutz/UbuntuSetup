#!/bin/bash

sudo apt-get update
sudo apt-get install -y wget nano apt-transport-https ca-certificates curl software-properties-common

wget -O install.deb https://go.microsoft.com/fwlink/?LinkID=760868 
sudo dpkg -i install.deb
sudo apt-get install -f -y
rm install.deb

wget -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash miniconda.sh -b -p $HOME/miniconda
rm miniconda.sh
echo PATH=~/miniconda/bin/:$PATH >> ~/.bashrc
PATH=~/miniconda/bin/:$PATH
conda install -y flask scikit-learn beautifulsoup4 bokeh



sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install -f docker-ce

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

wget -O go.tar.gz https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
echo PATH=$PATH:/usr/local/go/bin >> ~/.bashrc
rm go.tar.gz

    
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
