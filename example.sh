sudo apt update; sudo apt -y upgrade
sudo add-apt-repository ppa:pi-rho/dev -y
sudo apt update

sudo apt install -y tmux vim git

wget https://gist.githubusercontent.com/rytse/d69cb8e82e2ae3f8b6e6246e741d2cee/raw/87fbb751363081bed7ea30eac287b2b824782699/.tmux.conf
tmux

mkdir usrlib
cd usrlib

wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
chmod u+x Anaconda3-2019.07-Linux-x86_64.sh
./Anaconda3-2019.07-Linux-x86_64.sh	# requires you to click thru
rm ./Anaconda3-2019.07-Linux-x86_64.sh

git config --global user.name "Ryan Tse"
git config --global user.email rytse@umd.edu
git config --global core.editor vim