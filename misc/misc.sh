printf "\n\nINSTALLS MISC PROGRAMS\n"

printf "\nCHROME\n"
# installs google chrome

# checks if chrome already installed
if ! test -e google-chrome-stable_current_amd64.deb
then
  # installs fresh copy
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
else
  printf "\nSUCCESS - CHROME ALREADY INSTALLED\n"
fi

# removes previous install
# rm -rf google-chrome-stable_current_amd64.deb


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
printf "\n SUCCESS - Zulu JDK downloaded, now install ThinkOrSwim from here:\n"
printf "https://www.tdameritrade.com/tools-and-platforms/thinkorswim/desktop/download.page \n"
