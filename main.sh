sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

# installs basic software packages
sudo apt install -y tmux vim git

sh tmux/tmux.sh

# for importing libraries
mkdir usrlib
cd usrlib

# drivers
# sh audio/audio.sh

# programs

sh anaconda/anaconda.sh

sh alacritty/alacritty.sh
sh atom/atom.sh

# sh firefox/firefox.sh

# configures git settings
sh git/git.sh
