echo If you get an error, install dialog package.
#!/bin/bash

selection=$(dialog --menu "Lütfen seçiminizi yapın:" 10 60 3 1 "Install a tty web browser." 2 "Update and upgrade system." 3 "Install cmatrix" 4 "Install fastfetch" 5 "Open DuckDuckGo" 6 "Install flatpak" 7 "Install i3wm" --output-fd 1)

case $selection in
    1)
        sudo pacman -S links && clear
        ;;
    2)
        sudo pacman -Syu && clear
        ;;
    3)
        sudo pacman -S cmatrix && clear
        ;;
    4)
        git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch && clear
        ;;
    5)
	exo-open https://duckduckgo.com && clear
	;;
    6)
	sudo pacman -S flatpak && clear
	;;
    7)
	sudo pacman -S i3 && clear
	;;

esac
