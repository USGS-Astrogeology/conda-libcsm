PKG_NAME=libcsm
USER=usgs-astrogeology

OS=osx-64
mkdir ~/conda-bld
conda config --set anaconda_upload yes
export CONDA_BLD_PATH=~/conda-bld
export VERSION='3.0.1'
conda build --token $CONDA_UPLOAD_TOKEN .

