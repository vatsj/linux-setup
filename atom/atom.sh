wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

# Install Atom
sudo apt install -y atom

# install atom packages
apm install platformio-ide-terminal
apm install Hydrogen

# modify stylesheet for platformio?
