#!/bin/bash
# Fuctibash
echo
echo If you make a wrong choice, simply do the CTRL + c combination. The script will give you one more choice.
echo

select sel in "Install a tty web browser." "Update and upgrade system." "Install cmatrix" "Install fastfetch" "Open DuckDuckGo" "Install flatpak" "Install i3wm"
do
  case $sel in
    "Install a tty web browser.") sudo pacman -S links && exit;;
    "Update and upgrade system.") sudo pacman -Syu && exit;;
    "Install cmatrix") sudo pacman -S cmatrix && exit;;
    "Install fastfetch") git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch && exit;;
    "Open DuckDuckGo") exo-open https://duckduckgo.com && exit;;
    "Install flatpak") sudo pacman -S flatpak && exit;;
    "Install i3wm") sudo pacman -S i3;;
    *) echo "Geçersiz seçim && exit";;
  esac
done
