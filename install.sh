#!/bin/bash

gcc=riscv64-unknown-elf-gcc-8.2.0-2019.02.0-x86_64-linux-ubuntu14
ocd=riscv-openocd-0.10.0-2019.02.0-x86_64-linux-ubuntu14

curl -O https://static.dev.sifive.com/dev-tools/$gcc.tar.gz
curl -O https://static.dev.sifive.com/dev-tools/$ocd.tar.gz
tar -xvzf $gcc.tar.gz
tar -xvzf $ocd.tar.gz
mv $gcc riscv64-unknown-elf-gcc
mv $ocd riscv-openocd
rm $gcc.tar.gz
rm $ocd.tar.gz

git clone --recurse-submodules https://github.com/sifive/freedom-e-sdk.git
