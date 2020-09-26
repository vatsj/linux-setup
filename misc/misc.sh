printf "\n\nINSTALLS MISC PROGRAMS\n"

printf "\nSIGNAL\n"
# signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

printf "\nTHINKORSWIM\n"
# ThinkOrSwim
# not using conda, supposedly for java it matters less
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
sudo apt-update
sudo apt-get install zulu-8

# sets Java 8 as default java
sudo update-alternatives --config java
sudo update-alternatives --config javac
printf "\n Zulu JDK downloaded, now install ThinkOrSwim from here:\n"
printf "https://www.tdameritrade.com/tools-and-platforms/thinkorswim/desktop/download.page \n"

printf "\nWALLCH\n"
# wallch
sudo add-apt-repository ppa:wallch/3+
sudo apt-get update && sudo apt install wallch

printf "\nPNOTO EDITING\n"
# gimp/inkscape
sudo snap install gimp
sudo apt install inkscape
