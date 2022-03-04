#!/bin/bash

# this script will override vi, vim and nano with nvim!

set -e

which nvim > /dev/null || exit 1

nvim=$(which nvim)
vi=$(which vi)
vim=$(which vim)
nano=$(which nano)

echo $vi
echo $vim
echo $nano


echo "step 1: move old vi, vim and nano"

vi_real="${vi}_real"
vim_real="${vim}_real"
nano_real="${nano}_real"

echo "${vi} -> ${vi_real}"
echo "${vim} -> ${vim_real}"
echo "${nano} -> ${nano_real}"


sudo cp $vi $vi_real -f
sudo cp $vim $vi_real -f
sudo cp $nano $nano_real -f

echo ""
echo "step 2: override vi, vim and nano with links to nvim"
sudo ln /usr/bin/nvim $vi -f
sudo ln /usr/bin/nvim $vim -f
sudo ln /usr/bin/nvim $nano -f

echo "done"


