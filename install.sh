#!/bin/bash

wget https://www.sifive.com/boards

gcc=$(grep -oP \
"riscv64-unknown-elf-gcc-"\
"[0-9]+\.[0-9]+\.[0-9]+-[0-9]+\.[0-9]+\.[0-9]+"\
"-x86_64-linux-ubuntu[0-9]+" boards | tail -n 1)

ocd=$(grep -oP \
"riscv-openocd-"\
"[0-9]+\.[0-9]+\.[0-9]+-[0-9]+\.[0-9]+\.[0-9]+"\
"-x86_64-linux-ubuntu[0-9]+" boards | tail -n 1)

wget https://static.dev.sifive.com/dev-tools/$gcc.tar.gz
wget https://static.dev.sifive.com/dev-tools/$ocd.tar.gz

tar -xvzf $gcc.tar.gz
tar -xvzf $ocd.tar.gz
mv $gcc riscv64-unknown-elf-gcc
mv $ocd riscv-openocd
rm $gcc.tar.gz
rm $ocd.tar.gz
rm boards

git clone --recurse-submodules https://github.com/sifive/freedom-e-sdk.git
