#!/bin/sh
git config --global user.email "docker@containers-r-us.invalid"
git config --global user.name "Dock R"

# Clone the sample app repo
mkdir -p /git-server/repos
cd /git-server/repos
git clone https://github.com/jvogt/rallyjenkinsdemo-sampleapp.git temp
git clone --bare temp rallyjenkinsdemo-sampleapp.git 
cp /git-server/post-receive rallyjenkinsdemo-sampleapp.git/hooks/
chmod +x rallyjenkinsdemo-sampleapp.git/hooks/post-receive
cd /
