# i3wm Configuration

**Click the below image to see a preview of the i3bar:**

![Alt text](https://raw.githubusercontent.com/zimmertr/i3wm-Configuration/master/bar.png "i3bar")


## Summary 

This repository will help you create a highly configured implementation of i3. The idea is to recreate a typical Desktop Environment from scratch without all the bloat. To get started, install the dependencies below and follow the instructions according to your hardware configuration. `Desktop` contains configuration files for a Desktop configuration.  `Laptop` contains a subdirectory for a _Dockable_ and _Undocked_ implementation of my configuration.

This implementation of i3 will show the following metrics on your i3bar. When a metric reaches what I personally consider a _critical_ state, the block will highlight red to inform the user. 

1. Volume
2. Package Updates (AR & AUR)
3. System Uptime
4. Average CPU Temperature
5. Date & Time
6. Average CPU Utilization
7. Memory Usage, Max, and Percentage
8. System Load
9. Network RX & TX
10. Disk Read and Write

## Dependencies

**Required:**
* [i3-gaps-next-git](https://aur.archlinux.org/packages/i3-gaps-next-git/)
* [i3blocks-git](https://aur.archlinux.org/packages/i3blocks-git/)
* [i3status-git](https://aur.archlinux.org/packages/i3status-git/)
* [xorg-xinit](https://www.archlinux.org/packages/extra/x86_64/xorg-xinit/)

**Recommended:**
* [checkupdates-aur](https://aur.archlinux.org/packages/checkupdates-aur/)
* [compton](https://www.archlinux.org/packages/community/x86_64/compton/)
* [dmenu](https://www.archlinux.org/packages/community/x86_64/dmenu/)
* [dunst](https://www.archlinux.org/packages/community/x86_64/dunst/)
* [feh](https://www.archlinux.org/packages/extra/x86_64/feh/)
* [i3lock](https://www.archlinux.org/packages/community/x86_64/i3lock/)
* [pasystray](https://www.archlinux.org/packages/community/x86_64/pasystray/)
* [playerctl](https://www.archlinux.org/packages/community/x86_64/playerctl/)
* [pulseaudio](https://www.archlinux.org/packages/extra/x86_64/pulseaudio/)
* [numlockx](https://www.archlinux.org/packages/community/x86_64/numlockx/)
* [redshift](https://www.archlinux.org/packages/community/x86_64/redshift/)

**Optional:**

* [discord-canary](https://aur.archlinux.org/packages/discord-canary/)
* [google-chrome](https://aur.archlinux.org/packages/google-chrome/)
* [spotify](https://aur.archlinux.org/packages/spotify/)
* [sublime-text-dev](https://aur.archlinux.org/packages/sublime-text-dev/)
* [slack-desktop](https://aur.archlinux.org/packages/slack-desktop/)
* [terminator](https://www.archlinux.org/packages/community/any/terminator/)

## Instructions

### Desktop Configuration

1. `cp -r Scripts/* /usr/lib/i3blocks/`
2. `cp Desktop/config /etc/i3/config`
3. `cp Desktop/i3blocks.conf /etc/i3blocks.conf`
4. `cp Desktop/xinitrc ~/.xinitrc`
5. `cp Desktop/Xresources ~/.Xresources`
6. `startx`
7. Update `/etc/i3/config` and `/etc/i3blocks.conf` according to your configuration and desires.

### Dockable Laptop Configuration

**Warning:** These files are probably out of date since I use a MacBook as a laptop now.

Additional Dependency: [xorg-xrandr](https://www.archlinux.org/packages/?name=xorg-xrandr)

1. `cp Laptop/Dockable/i3/config.{multihead,singlehead} ~/.config/i3/`
2. `cp ~/.config/i3/config{.singlehead,}`
3. `cp Laptop/Dockable/i3blocks/.i3blocks.conf.{multihead,singlehead} ~/`
4. `cp ~/.i3blocks.conf{.singlehead,}`
5. `cp Laptop/Dockable/Xorg/.xinitrc.{multihead,singlehead} ~/`
6. `cp ~/.xinitrc{.singlehead,}`
7. `cp Laptop/Dockable/Xorg/.Xresources.{multihead,singlehead} ~/`
8. `cp ~/.Xresources{.singlehead,}`
7. `cp Laptop/Dockable/Xorg/xorg.conf /etc/X11/xorg.conf`
9. Create an alias in your Shell RC file for each of the following commands. 
```
multihead='startx /home/tj/.xinitrc.multihead'
singlehead='startx /home/tj/.xinitrc.singlehead'
```

When you boot your computer, you will be greeted by a TTY login prompt. Login and type either `singlehead` or `multihead` depending on your configuration. This will launch the required `.xinitrc` file for your monitor configuration. If you simply used `startx`, it will use the `singlehead` configuration but won't have any tweaks inserted for controlling the DPI, scaling, i3tray placement, workspace names, font sizes, etc. 

The `.xinitrc` file will copy the required configuration file over the configuration files used by Xorg and i3, will set the GPU to the Discrete Nvidia card, start the gnome-keyring-daemon, load the `.Xresources` file, and configure your monitor layout with Xrandr. Following which it will load the i3 desktop environment. 

When spawned, i3 will do the normal stuff but also spawn several applications into your tray for controlling things on your system like your network, volume, color shift, etc. 


### Undocked Laptop Configuration

**Warning:** These files are probably out of date since I use a MacBook as a laptop now.

I don't remember. Probably mostly the same as the Desktop Configuration above.
