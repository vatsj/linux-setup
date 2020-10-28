#!/bin/bash
printf "\nINSTALLING DISPLAY UTILITIES\n"

printf "\nWALLCH\n"
# wallch
sudo add-apt-repository ppa:wallch/3+
sudo apt-get update && sudo apt install wallch -y

printf "\nREDSHIFT (or f.lux)\n"
# sudo add-apt-repository ppa:nathan-renniewaldock/flux
# sudo apt-get update
# sudo apt-get install fluxgui
sudo apt-get install geoclue-2.0 redshift redshift-gtk
sudo redshift-gtk
