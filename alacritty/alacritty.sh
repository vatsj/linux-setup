printf "\nINSTALLING ALACRITTY\n"

# failing dramatically
sudo apt update; sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

# pulls pkg from github
git clone https://github.com/alacritty/alacritty.git
cargo build --release

sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# adds call to bashrc
# COMMENT OUT TO SUPPRESS DUPLICATE CALLS IN BASHRC
# echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc

mkdir ~/.config
cd ~/.config

# pulls config file iff it doesn't already exist
if ! test -f alacritty.yml
then
  wget https://raw.githubusercontent.com/Rigellute/rigel/master/alacritty.yml
fi
