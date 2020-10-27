#!/bin/bash

# creates conda env
conda create --name nondev # python=3.7

# shouldn't need conda init in each respective shell?
conda init
conda activate nondev

# conda install -c conda-forge youtube-dl
