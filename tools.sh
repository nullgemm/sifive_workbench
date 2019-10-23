#!/bin/sh

git clone https://github.com/sifive/freedom-devicetree-tools.git
cd freedom-devicetree-tools
git checkout master
./configure
sed -i "s/CPPFLAGS = $/CPPFLAGS = -fpermissive/g" Makefile
make
sudo make install
