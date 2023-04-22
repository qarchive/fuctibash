# Fuctibash
# echo "Please choose one of the following."
# echo "1. Install a tty web browser."
# echo "2. Update and upgrade system."
# echo "3. Install cmatrix"
# echo "4. Install fastfetch (Like neofetch, but much faster because written in C.)"
# echo "5. Open DuckDuckGo"

# Method 1

#read secim

#case $secim in
#  1) sudo pacman -S links;;
#  2) sudo pacman -Syu;;
#  3) sudo pacman -S cmatrix;;
#  4) git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch;;
#  5) exo-open https://duckduckgo.com;;
#  *) echo "Geçersiz seçim";;
# esac

# Method 2

select secim in "Install a tty web browser." "Update and upgrade system." "Install cmatrix" "Install fastfetch" "Open DuckDuckGo"
do
  case $secim in
    "Install a tty web browser.") sudo pacman -S links && exit;;
    "Update and upgrade system.") sudo pacman -Syu && exit;;
    "Install cmatrix") sudo pacman -S cmatrix && exit;;
    "Install fastfetch") git clone https://github.com/LinusDierheimer/fastfetch.git && cd fastfetch && mkdir -p build && cd build && cmake .. && cmake --build . --target fastfetch --target flashfetch && exit;;
    "Open DuckDuckGo") exo-open https://duckduckgo.com && exit;;
    *) echo "Geçersiz seçim && exit";;
  esac
done
