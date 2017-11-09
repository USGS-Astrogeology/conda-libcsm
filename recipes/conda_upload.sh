PKG_NAME=libcsm
USER=usgs-astrogeology

OS=osx-64
mkdir ~/conda-bld
conda config --set anaconda_upload no
export CONDA_BLD_PATH=~/conda-bld
export VERSION='3.0.1'
conda build .
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_BLD_PATH/$OS/$PKG_NAME-$VERSION-h$PKG_HASH_0.tar.bz2 --force

