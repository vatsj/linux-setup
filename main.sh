sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

# installs basic software packages
sudo apt install -y tmux vim git

sh tmux/tmux.sh

mkdir usrlib
cd usrlib

sh anaconda/anaconda.sh
sh alacritty/alacritty.sh

# configures git settings
sh git/git.sh
