# updates apt and installs package
# quiet-updates so terminal stays readable

# taking in parameters
root=$1
dir=$root/anaconda

# init log file
log=$root/log.txt
rm $log
touch $log

printf "loading library fns \n"
apt_UD()
{
  package=$1

  sudo apt update > $root/log.txt
  sudo apt install -y $package > $root/log.txt
}
