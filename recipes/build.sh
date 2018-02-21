#!/bin/bash

set -e # Abort on error

if [[ $(uname) == 'Linux' ]]; then
    if [[ $ARCH -eq 64 ]]; then
        CC=gcc-6 CXX=g++-6 make -f Makefile.linux64 all install INSTDIR=$PREFIX;
    else
        CC=gcc-6 CXX=g++-6 make -f Makefile.linux all install INSTDIR=$PREFIX;
    fi
else
    make -f Makefile.mac all install INSTDIR=$PREFIX;
fi
