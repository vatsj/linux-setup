#!/bin/bash

# creates conda env
conda create --name dev # python=3.7
conda activate dev

# jupyter lab
conda install -c conda-forge jupyterlab

# tex stuff for jupyterlab ipynb --> tex --> pdf
conda install nbconvert

# ML libraries
conda install -c anaconda tensorflow
conda install -c anaconda numpy
conda install -c anaconda pandas
