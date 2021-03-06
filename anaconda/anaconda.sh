#!/bin/bash
printf "\nINSTALLING CONDA\n"

# taking in parameters
root=$1
dir=$root/anaconda
# dir=`pwd`

# makes an anaconda-specific directory
# mkdir anaconda
# cd anaconda

# checks if anaconda already installed
if ! test -d ~/anaconda3
then
  # dependencies
  apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

  wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
  chmod u+x Anaconda3-2019.07-Linux-x86_64.sh

  # runs anaconda setup script (IN BASH)
  bash ./Anaconda3-2019.07-Linux-x86_64.sh -y # requires you to click thru

  rm ./Anaconda3-2019.07-Linux-x86_64.sh
else
  printf "\nSUCCESS - CONDA ALREADY INSTALLED\n"
fi

# updates conda if already installed
conda update -n base -c defaults conda -y

# instantiates conda venv's in the shell
printf "\nCALLS CONDA INIT\n"
# conda init, then rerun bashrc
conda init
sh ~/.bashrc

# calls files to create custom envs
# async errors for `sh` vs `source`?
bash -i $dir/dev.sh
bash -i $dir/nondev.sh

# test
printf "\nLISTING CONDA ENVS (conda env list):\n"
conda env list
