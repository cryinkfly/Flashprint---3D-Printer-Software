#!/bin/bash

# Name:         Flashprint - Installationsskript (Linux)
# Description:  With this file you can install Flashprint on Linux.
# Author:       Steve Zabka
# Author URI:   https://cryinkfly.de
# Time/Date:    13:45/05.01.2022
# Version:      1.2

# 1. Step: Open a Terminal and run this command: cd Downloads && chmod +x flashprint-install.sh && bash flashprint-install.sh
# 2. Step: The installation will now start and set up everything for you automatically.

# Install some packages (the minimum requirements), what you need for the installation of Flashprint!

echo "Install some packages, what you need for the installation of Flashprint!"
su -c 'zypper up && zypper install libGLU1 libQt5OpenGL5' &&
echo "Minimum requirements have been installed and set up for your system!"

echo "Download and install Flashprint on your computer!"
mkdir -p flashprint &&
cd flashprint &&

wget https://en.fss.flashforge.com/10000/software/3c387c1523ee5a2b8483b304091ca04c.deb &&
ar -x 3c387c1523ee5a2b8483b304091ca04c.deb &&
tar -xf data.tar.xz &&
su -c 'cp etc/udev/rules.d/99-flashforge5.rules $ROOT/etc/udev/rules.d/' &&
su -c 'cp usr/share/applications/FlashPrint5.desktop $ROOT/usr/share/applications/' &&
su -c 'cp -r usr/share/doc/flashprint5/ $ROOT/usr/share/doc/' &&
su -c 'cp -r usr/share/FlashPrint5/ $ROOT/usr/share/' &&
su -c 'cp usr/share/icons/hicolor/64x64/apps/flashforge.png $ROOT/usr/share/icons/hicolor/64x64/apps/'


echo "The installation of Flashprint is completed!"

echo "Now You must restart your computer to make all changes effective!"


