#!/bin/bash

# Directories
mkdir -p ~/installed/customGitConfig/bin ~/installed/bin ~/projects ~/school ~/stuff
mv save ~/installed/bin
mv laboratory ~/installed/bin
chmod +x ~/installed/bin/save  ~/installed/bin/laboratory
set -U fish_user_paths ~/installed/bin $fish_user_paths  
mv ~/UbuntuSetup ~/projects
cd


# Random Software
sudo apt update
sudo apt install -y wget nano apt-transport-https ca-certificates curl software-properties-common git man

#Fish Setup because bash is scary
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
curl -L https://get.oh-my.fish | fish
sudo chsh -s /usr/local/bin/fish $USER

#Gnome setup 
sudo apt install -y gnome-terminal
mv gnome.desktop ~/.local/share/applications/

# VS Code   
wget -O install.deb https://go.microsoft.com/fwlink/?LinkID=760868 
sudo dpkg -i install.deb
sudo apt install -f -y
rm install.deb

# Python
wget -O miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash miniconda.sh -b -p $HOME/installed/miniconda
rm miniconda.sh
set -U fish_user_paths ~/installed/miniconda/bin $fish_user_paths
source ~/.bashrc
python -m pip install mypy spotipy 
conda install -y flask scikit-learn beautifulsoup4 bokeh jupyterlab matplotlib mpld3 sympy 


# Golang
wget -O go.tar.gz https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C ~/installed -xzf go.tar.gz
set -U fish_user_paths ~/installed/go/bin/ $fish_user_paths

rm go.tar.gz


# Spotify
sudo apt install snapd
snap install -y spotify


