# i3wm Configuration

**Click the below image to see a preview of the i3bar:**

![Alt text](https://raw.githubusercontent.com/zimmertr/i3wm-Configuration/master/bar.png "i3bar.")


## Foreword / New Instructions

I haven't really kept this repo up to date so most of the information below is still related in some regards but not really anymore. 

There are a few folders on the root of this repo, each one containg some random configs pertaining to my personal Desktop Environment throughout time. My most recent configuration is the one titled Work_Laptop_Hybrid. To use it, install `i3-gaps-next-git`, `i3blocks-git`, `i3status-git`, `nvidia`, `xorg-xrandr`, `xorg-xinit`, `xorg`, `xorg-server`, & `xorg-apps`. Also required are additional packages used for my DE such as: `network-manager-applet`, `redshift-gtk-git`, `playerctl`, `ckb-next`, `i3lock`, `volumeicon`, `compton`, `dunst`, `numlockx`, `sublime-text-dev`, `virtualbox`, `google-chrome-stable`, `spotify`, `slack`, `discord-canary`, & `terminator`. 

1) `cp ~/git/i3wm-Configuration/Work_Laptop_Hybrid/i3/config.{multihead,singlehead} ~/.config/i3/`
2) `cp ~/.config/i3/config{.singlehead,}`
3) `cp ~/git/i3wm-Configuration/Work_Laptop_Hybrid/i3blocks/.i3blocks.conf.{multihead,singlehead} ~/`
4) `cp ~/.i3blocks.conf{.singlehead,}`
5) `cp ~/git/i3wm-Configuration/Work_Laptop_Hybrid/Xorg/.xinitrc.{multihead,singlehead} ~/`
6) `cp ~/.xinitrc{.singlehead,}`
7) `cp ~/git/i3wm-Configuration/Work_Laptop_Hybrid/Xorg/.Xresources.{multihead,singlehead} ~/`
8) `cp ~/.Xresources{.singlehead,}`
7) `cp ~/git/i3wm-Configuration/Work_Laptop_Hybrid/Xorg/xorg.conf /etc/X11/xorg.conf`
9) Create an alias in your Shell RC file for each of the following commands. 
```
multihead='startx /home/tj/.xinitrc.multihead'
singlehead='startx /home/tj/.xinitrc.singlehead'
```

When you boot your computer, you will be greeted by a TTY login prompt. Login and type either `singlehead` or `multihead` depending on your configuration. This will launch the required `.xinitrc` file for your monitor configuration. If you simply used `startx`, it will use the `singlehead` configuration but won't have any tweaks inserted for controlling the DPI, scaling, i3tray placement, workspace names, font sizes, etc. 

The `.xinitrc` file will copy the required configuration file over the configuration files used by Xorg and i3, will set the GPU to the Discrete Nvidia card, start the gnome-keyring-daemon, load the `.Xresources` file, and configure your monitor layout with Xrandr. Following which it will load the i3 desktop environment. 

When spawned, i3 will do the normal stuff but also spawn several applications into your tray for controlling things on your system like your network, volume, color shift, etc. 



## Summary / Old Instructions
This is a collection of the dotfiles required to use my personal integration of i3wm. Be sure to drop all included scripts in the `scripts` folder into `/usr/lib/i3blocks/`

I have defined thresholds for all values. And when these values are surpassed, the respective block will show a red background to indicate that it is in an unhealthy state. 

The text color for each of the blocks is intended to mimic a rainbow in the ROYGBIV style.

![Alt text](https://raw.githubusercontent.com/zimmertr/i3wm-Configuration/master/desktop.png "Desktop image.")

## Monitored Metrics
```
- Computer Volume
- OS Package Updates
- Computer Uptime
- Battery Level (Plus charging state indicator)
- Computer Temperature
- Outside Temperature
- Day, Date, and Time
- CPU Usage
- Memory Usage
- Network Usage (Up/Down)
- Computer Load
- Disk I/O
- Current Graphics Adapter
```

## Required Packages
```
- i3wm
- i3blocks
- dmenu
- weather-report (For outdoor weather)
- Prime (For Graphics)
```
