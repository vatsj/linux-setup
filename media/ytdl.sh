#!/bin/bash
printf "\nINSTALLING YOUTUBE-DL & FRIENDS\n"

# installs yt-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# NOT WORKING

# install manager for:
# ffmpeg - file type converter
# mpv - media player for bash terminal

# based off of
# https://github.com/mpv-player/mpv-build
sudo apt-get install devscripts equivs
sudo apt-get install -y libfribidi-dev yasm
# OpenGL
sudo apt-get install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev

# git clone the project repo, cd into it
git clone https://github.com/mpv-player/mpv-build
cd mpv-build

# # builds and installs ffmpeg, libass, mpv
# # TODO: huge output --> build in separate shell?
# ./rebuild -j4
# sudo ./install

# # In the mpv-build root directory, create and install a dummy build dependency package:
# sudo mk-build-deps -s -i
# # You can now build the mpv Debian package with the following command:
# dpkg-buildpackage -uc -us -b
# # Adjust the "4" to your number of available processors as appropriate. On completion, the file mpv_<version>_<architecture>.deb will be created in the parent directory. Install it with:
# # sudo dpkg -i ../mpv_<version>_<architecture>.deb
# sudo dpkg -i ../mpv_*_*.deb
