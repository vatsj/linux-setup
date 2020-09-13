# stores project root directory
root=`pwd`
cd ~/..

printf "\n\nUPDATING APT\n"
sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

printf "\n\nINSTALLS TMUX VIM GIT\n"
# installs basic software packages
sudo apt install -y tmux vim git
sh $root/tmux/tmux.sh

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
sh $root/anaconda/anaconda.sh $root

sh $root/alacritty/alacritty.sh
sh $root/atom/atom.sh

# configures git settings
sh $root/git/git.sh

# non-dev programs
sh $root/misc/misc.sh

# restart command?
