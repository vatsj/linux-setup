printf "\nINSTALLING .VIMRC CODE\n"

# downloading vimrc from github repo
if ! test -d ~/.vim_runtime
then
  # installs fresh copy from github repo
  git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
  sh ~/.vim_runtime/install_awesome_vimrc.sh
else
  printf "\nSUCCESS: .vimrc ALREADY INSTALLED\n"
fi

# Tse's vimrc
# sh ~/.vim_runtime/install_rytse_vimrc.sh
