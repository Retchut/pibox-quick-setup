#!/bin/bash

curr_dir=$(pwd)

# update system packages
sudo apt-get --assume-yes update
sudo apt-get --assume-yes upgrade

# setup touch lcd
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
cd LCD-show/
sudo ./LCD35-show

# setup matchbox-keyboard
sudo apt --assume-yes install matchbox-keyboard

# add keyboard toggle to bar
sudo chmod +x /usr/bin/toggle-keyboard.sh
cp -vf toggle-keyboard.sh /usr/bin/
cp -vf toggle-keyboard.desktop /usr/share/raspi-ui-overrides/applications/
cp -vf panel ~/.config/lxpanel/LXDE-pi/panels/

sudo reboot