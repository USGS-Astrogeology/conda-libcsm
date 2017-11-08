PKG_NAME=libcsm
USER=jlaura

OS=osx-64
mkdir ~/conda-bld
conda config --set anaconda_upload no
export CONDA_BLD_PATH=~/conda-bld
#export VERSION=`date +%Y.%m.%d`
export VERSION='3.0.1'
conda build .
anaconda -t $CONDA_UPLOAD_TOKEN upload -u $USER $CONDA_BLD_PATH/$OS/$PKG_NAME-$VERSION-0.tar.bz2 --force

