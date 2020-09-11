#!/bin/bash
printf "\nINSTALLING CONDA\n"

taking in parameters
root=$0
dir=$root/anaconda
# dir=`pwd`

wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
chmod u+x Anaconda3-2019.07-Linux-x86_64.sh
./Anaconda3-2019.07-Linux-x86_64.sh	# requires you to click thru
rm ./Anaconda3-2019.07-Linux-x86_64.sh

# calls files to create custom envs
sh $dir/dev.sh
sh $dir/bin.sh
