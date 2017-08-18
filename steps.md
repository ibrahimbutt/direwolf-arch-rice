UNFINISHED

xrandr --output DP1-8 --mode 2560x1440 --rate 59.95

sudo wifi-menu

sudo netctl enable SKY
reboot

reboot again if keyboard doesnt work. this time see wallpaper

sudo pacman -Syu
sudo pacman -S dmenu vim firefox rxvt-unicode

mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install

sudo pacman -S base-devel
yes to all

sudo pacman -S expac yajl git

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck --install --needed

curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD --install --needed

cd ~
rm -r /tmp/pacaur_install

sudo pacman -S feh imagemagick
python 3.5 or above

sudo pacman -S python-pip
pacaur -S pywal
no need to view PKGBUILD

wal -i ~/Pictuers/Wal/bg1.jpg

sudo pacman -S cairo libxcb python2 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm jsoncpp
pacaur -S polybar-git
talk about killing bar etc

git clone https://github.com/IbrahimButt/Linux-Ricing.git
cp -r ~/Linux-Ricing/.config/ ~/

cp -r ~/Linux-Ricing/.Xresources ~/
xrdb .Xresources
wal -i ~/Pictuers/Wal/bg1.jpg

close all windows
refresh i3
open new terinal and checkout ranger too

pacaur -S otf-overpass

sudo pacman -S w3m
vim ~/.config/ranger/rc.conf
set preview_images true
:wq
ranger --copy-config=scope

neofetch --w3m --source ~/Pictures/Wal/bg1.jpg 
