#!/bin/bash

echo "> Unistalling previus version"
sudo apt-get remove -y sublime-text-installer

echo "> Installing sublime-text"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

echo "> Installing sublime-package-control, plugins, settings"
curl -O https://packagecontrol.io/Package%20Control.sublime-package
mv Package%20Control.sublime-package ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package
yes | cp -rf sublime/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings
yes | cp -rf sublime/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap
yes | cp -rf sublime/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

