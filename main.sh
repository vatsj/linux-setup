#!/bin/sh\

# stores project root directory
root=`pwd`
cd ..

# printf "root: "
# echo $root

# imports library script
sh $root/library.sh $root

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
. $root/git/git.sh $root
. $root/tmux/tmux.sh

# installs tex dependencies
. $root/latex/latex.sh


printf "\n\n moving to usrlib: \n"
# for importing libraries

# tests if usrlib already exists
if ! test -d usrlib
then
  mkdir usrlib
fi
cd usrlib

# drivers
# sh audio/audio.sh

# dev programs

# language dependencies
sh $root/lang_deps/deps.sh $root

# takes in root dir as arg
sh $root/anaconda/anaconda.sh $root

sh $root/alacritty/alacritty.sh
sh $root/atom/atom.sh

# non-dev programs
sh $root/social/social.sh
sh $root/misc/misc.sh

# not working properly
# sh $root/media/ytdl.sh

# restart command?
