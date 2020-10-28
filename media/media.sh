#!/bin/bash
printf "\nINSTALLING MEDIA-EDITING APPS\n"

# taking in parameters
root=$1
dir=$root/media

sh $dir/photos.sh
sh $dir/ytdl.sh
