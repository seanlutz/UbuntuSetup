#!/bin/bash

# Directories
mkdir -p ~/installed/customGitConfig/bin ~/installed/bin ~/projects ~/school ~/stuff
mv save ~/installed/bin
mv laboratory ~/installed/bin
chmod +x ~/installed/bin/save  ~/installed/laboratory
echo PATH=~/installed/bin:$PATH >> ~/.bashrc
mv UbuntuSetup ~/projects
cd ~


# Random Software
sudo apt-get update
sudo apt-get install -y wget nano apt-transport-https ca-certificates curl software-properties-common git

# VS Code
wget -O install.deb https://go.microsoft.com/fwlink/?LinkID=760868 
sudo dpkg -i install.deb
sudo apt-get install -f -y
rm install.deb

# Python
wget -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash miniconda.sh -b -p $HOME/installed/miniconda
rm miniconda.sh
echo PATH=~/installed/miniconda/bin/:$PATH >> ~/.bashrc
PATH=~/installed/miniconda/bin/:$PATH
python -m pip install mypy
conda install -y flask scikit-learn beautifulsoup4 bokeh jupyter


# Docker
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get install -f docker-ce

# Node ;(
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Golang
wget -O go.tar.gz https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
echo PATH=$PATH:/usr/local/go/bin >> ~/.bashrc
rm go.tar.gz

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Spotify
sudo apt-get install snapd
snap install spotify

# Android Studio
wget https://dl.google.com/dl/android/studio/ide-zips/3.1.4.0/android-studio-ide-173.4907809-linux.zip
unzip android-studio-ide-173.4907809-linux.zip
mv android-studio installed/
rm android-studio-ide-173.4907809-linux.zip

# java
wget -O java.tar.gz http://javadl.oracle.com/webapps/download/AutoDL?BundleId=234464_96a7b8442fe848ef90c96a2fad6ed6d1
sudo tar -C ~/installed -zxvf java.tar.gz
JAVA_HOME=~/installed/jdk-10.0.2/bin/java
