#!/bin/bash
printf "\nINSTALLING CONDA\n"

# taking in parameters
root=$1
dir=$root/anaconda
# dir=`pwd`

# makes an anaconda-specific directory
# mkdir anaconda
# cd anaconda

# dependencies
apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
chmod u+x Anaconda3-2019.07-Linux-x86_64.sh

# runs anaconda setup script (IN BASH)
bash ./Anaconda3-2019.07-Linux-x86_64.sh -y # requires you to click thru

# instantiates conda venv's in the shell
printf "\nCALLS CONDA INIT\n"
conda init

rm ./Anaconda3-2019.07-Linux-x86_64.sh

# updates conda if already installed
conda update -n base -c defaults conda -y

# conda init, then rerun bashrc
conda init
bashrc

# calls files to create custom envs
sh $dir/dev.sh
sh $dir/nondev.sh

# test
conda env list
