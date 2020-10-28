#!/bin/bash
printf "\nINSTALLING CMD LINE UTILITIES\n"

# included in conda - dev!
printf "\nFORMAT CONVERSION - PANDOC\n"
sudo apt install pandoc

# doesn't really count as a "terminal utility"?
printf "\nTIMESHIFT FOR OS BACKUP (THINK: TIME MACHINE + BOOTABLE USB)\n"
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift
# have to manually run the app
printf "\nSUCCESS - RUN APP W INSTRUCTIONS AT: \n"
printf "https://linuxconfig.org/ubuntu-20-04-system-backup-and-restore \n"
