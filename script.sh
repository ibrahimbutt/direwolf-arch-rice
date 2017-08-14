netctl enable SKY
reboot

sudo pacman -Syu
mkdir -p /tmp/pacaur_install
cd /tmp/pacaur_install
sudo pacman -S binutils make gcc fakeroot pkg-config --noconfirm --needed
sudo pacman -S expac yajl git --noconfirm --needed
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
makepkg PKGBUILD --skippgpcheck --install --needed
curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg PKGBUILD --install --needed
cd ~
rm -r /tmp/pacaur_install

sudo pacman -Syu
sudo pacman -S cairo libxcb python3 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm python-pip imagemagick

pacaur -S python-pywal
pacaur -S polybar-git

cd ~
cd mkdir polybar/build
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config
