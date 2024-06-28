#!/bin/sh
# IMPORTANT:
# the script this to be a arch linux distro

INSTALL_DIR="/usr/src/"

if ! which yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ../
    rm -rf ./yay
else
    echo "yay is installed."
fi

yay -S --noconfirm doas git ttf-iosevka zsh

# generate doas.conf
echo "permit nopass :wheel" | sudo tee -a /etc/doas.conf

# install suckless software
doas git clone https://github.com/FelipeFa6/dwm $INSTALL_DIR/dwm
doas git clone https://github.com/FelipeFa6/st $INSTALL_DIR/st
doas git clone https://github.com/jcs/xbanish $INSTALL_DIR/xbanish
doas git clone https://git.suckless.org/dmenu $INSTALL_DIR/dmenu

doas make clean install -C $INSTALL_DIR/dmenu
doas make clean install -C $INSTALL_DIR/dwm
doas make clean install -C $INSTALL_DIR/st
doas make clean install -C $INSTALL_DIR/xbanish

sudo chsh -s $(which zsh) $($USER)

echo "Finished setup"
cd $HOME
