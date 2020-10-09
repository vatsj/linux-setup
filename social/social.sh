printf "\n\nMESSAGING PLATFORMS - DISCORD SIGNAL ETC\n"

printf "\nDISCORD\n"
# not working!!!!
# wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
# sudo dpkg -i discord.deb
snap install discord

printf "\nSIGNAL\n"
# signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
