#!/bin/bash 

set -e

cd ~/Projects/vscode_keybindings
cp ~/.config/qtile ./ -rf
git add .
git commit -m "saved qtile config"
git push

