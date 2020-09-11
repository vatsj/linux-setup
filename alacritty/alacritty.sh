printf "\nINSTALLING ALACRITTY\n"

# failing dramatically
sudo apt update; sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

# cd usrlib
git clone https://github.com/alacritty/alacritty.git
cargo build --release

sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc

mkdir ~/.config
cd ~/.config
wget https://raw.githubusercontent.com/Rigellute/rigel/master/alacritty.yml
