#!/usr/bin/python3


import os
import json

def change_color_of_terminal(color):
    os.chdir("/home/tom/.config/xfce4/terminal")
    os.system(f'cp terminalrc.{color} terminalrc -f')

def change_vim_color(color):
    pass

def change_chrome_color(color):
    pass

def toggle_color():
    try:
        with open('/home/tom/.config/values.json') as f:
            config = json.load(f)
    except FileNotFoundError:
        config = {}

    current = config.get('color', 'light')
    if current == 'light':
        color = 'dark'
    else:
        color = 'light'

    config['color'] = color

    with open('/home/tom/.config/values.json', 'w') as f:
        json.dump(config, f)

    return color

def main():
    color = toggle_color()
    change_color_of_terminal(color)


main()
