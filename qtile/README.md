# qtile

This is my qtile confic

## Help

### Touchpad is not tapping

See [here](https://www.mail-archive.com/qtile-dev@googlegroups.com/msg01547.html) for the solution:

In essence: Change `/usr/share/X11/xorg.conf.d/40-libinput.conf` from:

```
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
EndSection
```

to:

```
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"*
EndSection
```
(see the line with the `Option`)
