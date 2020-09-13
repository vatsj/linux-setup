#!/bin/sh\

# stores project root directory
root=`pwd`
cd ..

# printf "root: "
# echo $root

# imports library script
. $root/library.sh $root

# prompts for password
sudo printf "sudo access granted \n"

printf "\n\nUPDATING APT\n"
sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

printf "\n\nINSTALLS TMUX VIM GIT\n"
# installs basic software packages
sudo apt install -y tmux vim git

# configures settings
# git has to go first? everything else installs github packages
. $root/git/git.sh
. $root/tmux/tmux.sh


printf "\n\nINSTALLS NPM NODEJS\n"
# installs package managers
sudo apt install -y npm nodejs

printf "\n\n moving to usrlib: \n"
# for importing libraries
mkdir usrlib
cd usrlib

# drivers
# sh audio/audio.sh

# dev programs

# takes in root dir as arg
. $root/anaconda/anaconda.sh $root

. $root/alacritty/alacritty.sh
. $root/atom/atom.sh

# non-dev programs
. $root/misc/misc.sh

# restart command?
