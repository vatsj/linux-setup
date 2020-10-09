printf "\nCONFIURING TMUX WITH TSE'S .conf FILE\n"

if ! test -f .tmux.conf
then
  wget https://gist.githubusercontent.com/rytse/d69cb8e82e2ae3f8b6e6246e741d2cee/raw/87fbb751363081bed7ea30eac287b2b824782699/.tmux.conf
else
  printf "SUCCESS: .tmux.conf already installed\n"
fi
# tmux
