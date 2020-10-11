printf "\n\nCONFIGURING GIT/GITHUB\n"

printf "\nSETTING GIT CONFIGS (credentials are private)\n"
sh auth.sh

printf "\nINSTALLS GITHUB CLI\n"
# github CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh

sh perweb.sh
