#!/bin/sh

TREE_ROOT=`pwd`
if [ ! -d$TREE_ROOT/yocto ]
then
    echo "Need to be in ~/zynos, with ~/zynos/yocto."
    exit 1
fi

cd $TREE_ROOT/yocto
if [ $? -ne 0 ]
then
    echo "Can't CD into $TREE_ROOT/yocto"
    exit 1

fi

if [ ! -d poky ]
then
    git clone -b morty git://git.yoctoproject.org/poky.git
fi


if [ ! -d meta-openembedded ]
then
    git clone -b morty https://github.com/openembedded/meta-openembedded.git
fi

if [ ! -d meta-xilnx ]
then
    git clone -b rel-v2017.4 https://github.com/Xilinx/meta-xilinx.git
fi

cd poky; . ./oe-init-build-env
cd $CWD
 
exit 0
