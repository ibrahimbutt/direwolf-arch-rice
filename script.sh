#!/bin/sh

# ON FIRST BOOT

# 1. Place this script in /usr/local/bin folder.
# 2. Run `wifi-menu` in the terminal to make a wifi profile.
# 3. Run `netctl enable <profile name>; reboot`.

# AFTER REBOOT

echo "Checking for system updates..."
sudo pacman -Syu

echo "Installing dependencies..."
sudo pacman -S --noconfirm base-devel cairo libxcb python3 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm alsa-lib jsoncpp libmpdclient libcurl wireless_tools imagemagick feh nitrogen bgs hsetroot habak

echo "Checking for system updates..."
sudo pacman -Syu

sudo pacman -S expac yajl git --noconfirm --needed

if [ ! -n "$(pacman -Qs cower)" ]; then
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
    makepkg PKGBUILD --skippgpcheck --install --needed
fi

# Install "pacaur" from AUR
if [ ! -n "$(pacman -Qs pacaur)" ]; then
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD --install --needed
fi

# Clean up...
cd ~
rm -r /tmp/pacaur_install

pacaur -S polybar-git
git clone --branch 3.0.5 --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
sudo make install
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config

pacaur -S python-pywal
