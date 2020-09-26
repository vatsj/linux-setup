#!/bin/bash
printf "\nINSTALLING CONDA\n"

# taking in parameters
root=$1
dir=$root/anaconda
# dir=`pwd`

# makes an anaconda-specific directory
# mkdir anaconda
# cd anaconda

wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
chmod u+x Anaconda3-2019.07-Linux-x86_64.sh
./Anaconda3-2019.07-Linux-x86_64.sh	-y # requires you to click thru
rm ./Anaconda3-2019.07-Linux-x86_64.sh

# updates conda if already installed
conda update -n base -c defaults conda

conda init

# calls files to create custom envs
sh $dir/dev.sh
sh $dir/nondev.sh

# test
conda env list
