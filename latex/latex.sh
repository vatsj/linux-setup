printf "\n\nINSTALLS TEX + HELPER PACKAGES\n"

# command-line tool for running latex files
# keyword "latex"
sudo apt install texlive

# needed for jupyterlab ipynb --> pdf
# jupyterlab install controlled in anaconda/dev.sh
sudo apt install texlive-xetex texlive-fonts-recommended texlive-generic-recommended
