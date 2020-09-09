# stores project root directory
root=`pwd`
cd ~/..

sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

# installs basic software packages
sudo apt install -y tmux vim git

# installs package managers
sudo apt install -y npm

sh $root/tmux/tmux.sh

# for importing libraries
mkdir usrlib
cd usrlib

# drivers
# sh audio/audio.sh

# programs

sh $root/anaconda/anaconda.sh

sh $root/alacritty/alacritty.sh
sh $root/atom/atom.sh

# sh firefox/firefox.sh

# configures git settings
sh $root/git/git.sh

# restart command?
