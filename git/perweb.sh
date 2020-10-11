printf "\nINSTALLS JEKYLL FOR RUNNING PERSONAL WEBSITE\n"
# installs Jekyll, for personal website in github pages

# installs ruby and ruby package manager
sudo apt-get install ruby-full build-essential zlib1g-dev
# edit .bashrc IF not already done

# assumes ~/gems dir exists iff jekyll installed iff code already run
if ! test -d ~/gems
then
  echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
  echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
  echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc

  gem install jekyll bundler
  gem install github-pages
else
  printf "SUCCESS: Ruby gems installation already installed\n"
fi
