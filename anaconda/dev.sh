#!/bin/bash

# creates conda env
conda create --name dev # python=3.7

# shouldn't need conda init in each respective shell?
conda init
conda activate dev

# jupyter lab
conda install -c conda-forge jupyterlab -y

# tex stuff for jupyterlab ipynb --> tex --> pdf
conda install nbconvert -y

# ML libraries
# conda install -c anaconda tensorflow -y
# conda install -c anaconda numpy -y
# conda install -c anaconda pandas -y
conda install -c anaconda tensorflow numpy pandas -y
