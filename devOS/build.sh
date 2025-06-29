#!/bin/bash
# This script builds the devOS ISO using the Arch Linux build system.

set -e 

sudo rm -rf work out
sudo mkarchiso -v -w work -o out .

