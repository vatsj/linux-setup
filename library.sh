# updates apt and installs package
# quiet-updates so terminal stays readable

# taking in parameters
root=$1
dir=$root

# init log file
log=$dir/log.txt
# echo $log
rm $log
touch $log

printf "loading library fns \n"
apt_UD()
{
  package=$1

  sudo apt update > $log
  sudo apt install -y $package > $log
}
