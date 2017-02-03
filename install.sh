#!/bin/bash

echo "-------------------------------------------"
echo "---------- Runing install script ----------"
echo "-------------------------------------------"
echo "sudo apt-get update"
sudo apt-get update
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

echo "-------------------------------------------"
echo "Installing curl"
sudo apt-get install -y curl

echo "-------------------------------------------"
echo "Installing git"
sudo apt-get install -y git

echo "Setting git config"
echo "git config --global user.email \"roberto.cclo@gmail.com\""
git config --global user.email "roberto.cclo@gmail.com"
echo "git config --global user.name \"Roberto Cuadros\""
git config --global user.name "Roberto Cuadros"

echo "-------------------------------------------"
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source ~/.profile

echo "Installing node"
source ~/.profile
#nvm ls-remote
nvm install 6.9.5
node -v
npm -v

echo "-------------------------------------------"
echo "Installing mongo"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
echo $'[Unit] \nDescription=High-performance, schema-free document-oriented database \nAfter=network.target \n\n[Service] \nUser=mongodb \nExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf \n\n[Install] \nWantedBy=multi-user.target' | sudo tee /etc/systemd/system/mongodb.service

echo "sudo systemctl start mongodb"
sudo systemctl start mongodb

echo "sudo systemctl enable mongodb"
sudo systemctl enable mongodb

#echo "-------------------------------------------"
#echo "Installing sublime-text"
#sudo add-apt-repository ppa:webupd8team/sublime-text-3
#sudo apt-get update
#sudo apt-get install -y sublime-text-installer

#echo "Installing sublime-package-control, plugins, settings"
#curl -O https://packagecontrol.io/Package%20Control.sublime-package
#mv Package\ Control.sublime-package ~/.config/sublime-text-3/Installed Packages/Package\ Control.sublime-package
#yes | cp -rf sublime/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
#yes | cp -rf sublime/Default\ (Linux).sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ (Linux).sublime-keymap
#yes | cp -rf sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

echo "-------------------------------------------"
echo "Installing google-chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

echo "-------------------------------------------"
echo "Installing oh-my-zsh"
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s `which zsh`

echo "--------- Installation completed! ---------"
