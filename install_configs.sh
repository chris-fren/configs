#!/bin/bash

SRC_DIR=`pwd`
INSTALL_DIR=${HOME}

# Each file to be linked to should be in this list!
CONFIG_FILES=".bashrc
.emacs
.gitconfig
.gtkrc-2.0
.screenrc
.Xmodmap
.bashDirB"

for i in ${CONFIG_FILES}
do
     TARGET=${SRC_DIR}/${i}
     FILE=${INSTALL_DIR}/${i}
     echo Installing ${i}
     ln -s ${TARGET} ${FILE} 2>/dev/null 
done

echo Done!
