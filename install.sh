#!/bin/bash

# Directories
mkdir -p ~/installed/customGitConfig/bin ~/installed/bin ~/projects ~/school ~/stuff
mv save ~/installed/bin
mv laboratory ~/installed/bin
chmod +x ~/installed/bin/save  ~/installed/bin/laboratory
echo PATH=~/installed/bin:\$PATH >> ~/.bashrc
mv ~/UbuntuSetup ~/projects
cd

# readlink -f play/pls | xargs -I '{}' ln {} softpls

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
python -m pip install mypy
conda install -y flask scikit-learn beautifulsoup4 bokeh jupyterlab


# Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt update
sudo apt install -f -y docker-ce

# Node ;(
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install -y nodejs

# Golang
wget -O go.tar.gz https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C ~/installed -xzf go.tar.gz
echo PATH=~/installed/go/bin/:\$PATH >> ~/.bashrc

rm go.tar.gz

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y -f sublime-text

# Spotify
sudo apt install snapd
snap install -y spotify

# Android Studio
wget -O androidInstall.zip https://dl.google.com/dl/android/studio/ide-zips/3.1.4.0/android-studio-ide-173.4907809-linux.zip
unzip -qq androidInstall.zip
mv android-studio installed/
rm androidInstall.zip

# java
wget -O java.tar.gz http://download.oracle.com/otn-pub/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.tar.gz?AuthParam=1539072165_435ecd2e8505bc49bbf11b172abc1036
sudo tar -C ~/installed -zxf java.tar.gz --one-top-level=jdk
echo JAVA_HOME=~/installed/jdk-10.0.2/bin/java >> ~/.bashrc
echo PATH=~/installed/jdk-10.0.2/bin:\$PATH >> ~/.bashrc
rm java.tar.gz