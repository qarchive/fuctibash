#!/bin/bash

echo If you get an error, install dialog package.

selection=$(dialog --menu "Please make your selection:" 10 60 3 1 "Install a tty web browser." 2 "Update and upgrade system." 3 "Install cmatrix" 4 "Install fastfetch" 5 "Open DuckDuckGo" 6 "Install flatpak" 7 "Install i3wm" 8 "Install zsh" 9 "Install fish" 10 "Install Hyprland" --output-fd 1)

case $selection in
    1)
    sudo pacman -S links --noconfirm --needed && clear
    ;;
    2)
    sudo pacman -Syu --noconfirm --needed && clear
    ;;
    3)
    sudo pacman -S cmatrix --noconfirm --needed && clear
    ;;
    4)
    git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch && clear
    ;;
    5)
	exo-open https://duckduckgo.com && clear
	;;
    6)
	sudo pacman -S flatpak --noconfirm --needed && clear
	;;
    7)
	sudo pacman -S i3 --noconfirm --needed && clear
	;;

    8)
    sudo pacman -S zsh --noconfirm --needed && clear
    ;;

    9)
    sudo pacman -S fish --noconfirm --needed && clear
    ;;

    10)
    sudo pacman -S hyprland xdg-desktop-portal-hyprland kitty --noconfirm --needed && clear
esac
