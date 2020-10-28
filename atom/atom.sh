printf "\nINSTALLING ATOM & PACKAGES\n"

# taking in parameters
root=$1
dir=$root/atom
atom=~/.atom

wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

# Install Atom
sudo apt install -y atom

# import keybindings, config files
mkdir $atom
cp $dir/keymap.cson $atom

# install atom packages

# terminal packages are finicky...
# apm install platformio-ide-terminal
apm install termination
# modify stylesheet for terminal?

apm install Hydrogen
