#!/bin/bash

# Directories
mkdir -p ~/installed/customGitConfig/bin ~/installed/bin ~/projects ~/school ~/stuff
mv save ~/installed/bin
mv laboratory ~/installed/bin
chmod +x ~/installed/bin/save  ~/installed/bin/laboratory
echo PATH=~/installed/bin:\$PATH >> ~/.bashrc
mv ~/UbuntuSetup ~/projects
cd


# Random Software
sudo apt update
sudo apt install -y wget nano apt-transport-https ca-certificates curl software-properties-common git man

# VS Code   
wget -O install.deb https://go.microsoft.com/fwlink/?LinkID=760868 
sudo dpkg -i install.deb
sudo apt install -f -y
rm install.deb

# Python
wget -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash miniconda.sh -b -p $HOME/installed/miniconda
rm miniconda.sh
echo PATH=~/installed/miniconda/bin:\$PATH >> ~/.bashrc
source ~/.bashrc
python -m pip install mypy spotipy 
conda install -y flask scikit-learn beautifulsoup4 bokeh jupyterlab matplotlib mpld3 


# Golang
wget -O go.tar.gz https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C ~/installed -xzf go.tar.gz
echo PATH=~/installed/go/bin/:\$PATH >> ~/.bashrc

rm go.tar.gz


# Spotify
sudo apt install snapd
snap install -y spotify


# java
wget -O java.tar.gz http://download.oracle.com/otn-pub/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.tar.gz?AuthParam=1539072165_435ecd2e8505bc49bbf11b172abc1036
sudo tar -C ~/installed -zxf java.tar.gz --one-top-level=jdk
echo JAVA_HOME=~/installed/jdk-10.0.2/bin/java >> ~/.bashrc
echo PATH=~/installed/jdk-10.0.2/bin:\$PATH >> ~/.bashrc
rm java.tar.gz
