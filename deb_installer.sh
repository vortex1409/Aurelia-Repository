#!/bin/bash

# Place this folder in your home directory
# Launch Terminal and type 'sh installer.sh'
# Once launched type deb file name to be installed
# Enter root password and your apt/deb package will
# install successfully

cd Downloads

echo DEB WORKAROUND INSTALLATION SCRIPT
echo ==================================
echo Current Directory: Downloads
echo ==================================
echo Input Deb File Name

read deb_filename

sudo dpkg -i $deb_filename.deb
sudo apt-get -f install
