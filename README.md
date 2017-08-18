# Installation Guide

![The Setup](https://i.redd.it/qpmai7t7ibgz.png)

## Installing Arch Linux
If you already have Arch installed, install i3 and Urxvt: `sudo pacman -S i3 rxvt-unicode`.

If you do not have Arch installed, you can follow the [installation guide ](https://wiki.archlinux.org/index.php/installation_guide)or use [Arch-Anywhere](https://arch-anywhere.org/download/). Either way, use netctl for managing your wireless connection. If you use Arch-Anywhere, I will assume you selected i3 and rxvt-unicode during installation.

## First Boot/Log-In

You will be prompted to select the windows or alt key as a modifier. The modifier key is used for controlling the window manager. After this, select yes to creating a config file.

Open the terminal by pressing mod+enter, then run `sudo wifi-menu` to create a wireless profile and remember its name. Then run `sudo netctl enable <profile_name>`. This automatically connects you to wifi on each boot. Now run `reboot`.

If you installed a login manager, make sure to select i3 as the desktop environment. For example, the gnome login manager has a small settings/cog icon that lets you do so.

If you didn't install a login manager, type your user username and then password. Once you've done that, type `startx` and hit enter to start i3.

Your screen resolution may be incorrect. Run `xrandr` and identify your display. Then run `xrandr --output <source_name> --mode 2560x1440 --rate <refresh_rate>` For me it is `xrandr --output DP1-8 --mode 2560x1440 --rate 59.95`. If you have multiple monitors, check out the [documentation](https://wiki.archlinux.org/index.php/Xrandr). The xrandr setting isn't permanent for now, we'll get to that later.

## Lets Get Cooking!

Install Dmenu, Vim and Ranger: `sudo pacman -S dmenu vim ranger`.
Dmenu is used pressing mod+d, then typing in the package you want to use. This will only work if the package has a GUI. To use Ranger, run `ranger` in the terminal.

### Installing Pacaur
```
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

sudo pacman -S base-devel
# Install everything

sudo pacman -S expac yajl git

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck --install --needed

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD --install --needed

cd ~
rm -r /tmp/pacaur_install
```

### Installing Pywal

Python 3.5 or above is required, so ensure it's installed by running `python -V`. If it isn't, install it.

When you're good to go:
```
sudo pacman -S feh imagemagick python-pip

pacaur -S python-pywal
# You don't need to view package build. If you decide to view it, it'll be displayed in Vim. Type `:q` to exit Vim.
```
#### Using Pywal
Download the image [here](http://imgur.com/JZzTrvu). Then do the following:
```
cd ~
mkdir ~/Pictures/Wal/
mv ~/Downloads/bg1.jpg ~/Pictures/Wal/
```

To use Pywal, run `wal -i ~/Pictures/Wal/bg1.jpg`.

### Installing Polybar
```
sudo pacman -S cairo libxcb python2 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm jsoncpp
pacaur -S polybar-git
```

### Installing My Dot Files and .Xresources
```
cd ~
git clone https://github.com/IbrahimButt/Linux-Ricing.git
cp -r ~/Linux-Ricing/.config/ ~/

cp -r ~/Linux-Ricing/.Xresources ~/
xrdb .Xresources
```
You will need to run `wal -i <path_to_image/directory>` again here, so Urxvt used the colorscheme.

Refresh i3 by pressing mod+r.

Only terminals and windows opened after this point will have the changes applied to them. 


### Install Fonts

`pacaur -S otf-overpass`

Refresh i3 to see changes.

### Make Changes To i3 Config
Read through the whole config file and understand what's happening. Change anything that's necessary. The comments will give you hints as to what you may want to change. Do not skip this step.

### Preview Imasges In Ranger

Install w3m: `sudo pacman -S w3m`. Then run `vim ~/.config/ranger/rc.conf`. Read it and understand it. Lastly, run `ranger --copy-config=scope`.

Run `ranger` in the terminal and use arrows keys to navigate. Make your way to ~/Pictures/Wal/bg1.jpg and you should see a preview of it.

### Get System Info and Replace ASCII Logo With Image

neofetch --w3m --source ~/Pictures/Wal/bg1.jpg

### Activate Polybar

` polybar bar`

Go into ranger and type `zh` to display hidden files. Then go to ~/.config/polybar/launch.sh. Here you'll have a preview of the file. Read it to understand what is happening each time you boot/refresh i3.

## Conclusion

Your set up should be identical to mines now.

## Known Issues

The xrandr setting needs to be set on each boot if you're using startx. I'm currently in the process of figuring that out. If you have any issues, feel free to raise one.
