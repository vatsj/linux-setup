# creates conda env
conda create --name dev # python=3.7
source activate dev

# jupyter lab
conda install -c conda-forge jupyterlab

# ML libraries
conda install -c anaconda tensorflow
conda install -c anaconda numpy
conda install -c anaconda pandas 
