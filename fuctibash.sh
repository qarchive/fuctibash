#!/bin/bash
# Fuctibash

select sel in "Install a tty web browser." "Update and upgrade system." "Install cmatrix" "Install fastfetch" "Open DuckDuckGo"
do
  case $sel in
    "Install a tty web browser.") sudo pacman -S links && exit;;
    "Update and upgrade system.") sudo pacman -Syu && exit;;
    "Install cmatrix") sudo pacman -S cmatrix && exit;;
    "Install fastfetch") git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch && exit;;
    "Open DuckDuckGo") exo-open https://duckduckgo.com && exit;;
    *) echo "Geçersiz seçim && exit";;
  esac
done
