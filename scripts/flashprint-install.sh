#!/bin/bash

# Name:         Flashprint - Installationsskript (Linux)
# Description:  With this file you can install Flashprint on Linux.
# Author:       Steve Zabka
# Author URI:   https://cryinkfly.de
# Time/Date:    12:30/03.07.2021
# Version:      1.0

# 1. Step: Open a Terminal and run this command: cd Downloads && chmod +x flashprint-install.sh && bash flashprint-install.sh
# 2. Step: The installation will now start and set up everything for you automatically.

# Install some packages (the minimum requirements), what you need for the installation of Flashprint!

echo "Install some packages, what you need for the installation of Flashprint!"
su -c 'zypper up && zypper install libGLU1 libQt5OpenGL5' &&
echo "Minimum requirements have been installed and set up for your system!"

echo "Download and install Flashprint on your computer!"
cd Downloads &&
mkdir -p flashprint &&
cd flashprint &&

wget https://en.fss.flashforge.com/10000/software/eb49bb17d0d578dbd22b01e388c53579.deb &&
ar -x eb49bb17d0d578dbd22b01e388c53579.deb &&
tar -xf data.tar.xz &&
su -c 'cp /etc/udev/rules.d/99-flashforge.rules $ROOT/etc/udev/rules.d/ && cp /usr/share/applications/FlashPrint.desktop $ROOT/usr/share/applications/ && cp -r /usr/share/doc/flashprint/ $ROOT/usr/share/doc/ && cp -r /usr/share/FlashPrint/ $ROOT/usr/share/ && cp /usr/share/icons/hicolor/64x64/apps/flashforge.png $ROOT/usr/share/icons/hicolor/64x64/apps/'
echo "The installation of Flashprint is completed!"

echo "Now You must restart your computer to make all changes effective!"


