#!/bin/bash

mkdir build
cd build

# Clone and build the Potree viewer dependencys
git clone https://github.com/potree/potree.git
cd potree
echo Installing Node.JS requires sudo priveleges
sudo apt -yy install npm
npm install
cd ..

# Create a deployment folder and copy files to it
mkdir deploy
cp -R potree/build deploy/
cp -R potree/libs deploy/
mkdir deploy/template
wget -P deploy/template/ https://raw.githubusercontent.com/klakar/potree_deploy/main/index.html
wget -P deploy/ https://raw.githubusercontent.com/klakar/potree_deploy/main/read.me

# Package deployment files to a zip-file
cd deploy
zip -rq ../../potree-deploy.zip *
clear
echo "file potree-deploy.zip has been created..."
echo ""
echo "You can delete the build folder if you no longer need it."
