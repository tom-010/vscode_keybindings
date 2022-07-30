#!/bin/bash 

set -e

cd ~/Projects/vscode_keybindings
cp ~/.config/nvim ./ -rf
git add .
git commit -am"saved nvim config"
git push
