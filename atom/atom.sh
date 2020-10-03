printf "\nINSTALLING ATOM & PACKAGES\n"

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

# Install Atom
# apt_UD atom

sudo apt-get update
sudo apt install -y atom

# import keybindings, config files
atom="~/.atom"
cp keymap.cson $atom

# install atom packages

# terminal packages are finicky...
# apm install platformio-ide-terminal
apm install termination
# modify stylesheet for terminal?

apm install Hydrogen
