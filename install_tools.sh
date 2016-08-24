#!/bin/bash
# This script builds some of the other the other tools I use with pyne.
#
# Run this script from any directory by issuing the command:
# $ ./install_tools.sh
# After the build finishes run:
#  $ source ~/.bashrc
# first alara
sudo apt-get install build-essential libtool automake
cd $HOME
mkdir alara
cd alara
git clone https://github.com/svalinn/alara.git
cd alara
autoreconf -fi
mkdir bld
cd bld
../configure --prefix=/home/steve/alara
make
make install
#
#
# now other tools
cd $HOME
mkdir toolkit
cd toolkit
git clone https://github.com/py1sl/neutron_tools
git clone https://github.com/py1sl/pyne_based_tools 
