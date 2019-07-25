#!/bin/bash

cd freedom-e-sdk && make BSP=metal PROGRAM=$1 TARGET=sifive-hifive1-revb upload
