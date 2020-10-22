printf "\n\nINSTALLS LANGUAGE-SPECIFIC DEPENDENCIES\n"

# taking in parameters
root=$1
dir=$root/lang_deps

# runs component scripts
sh $dir/js.sh
sh $dir/perweb.sh
