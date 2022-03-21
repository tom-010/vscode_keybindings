#!/bin/bash

# fd is a replacement of find
# https://www.youtube.com/watch?v=f0N_4SgCoMY

sudo apt install fd-find
ln -s $(which fdfind) ~/.local/bin/fd
. ~/.profile 

