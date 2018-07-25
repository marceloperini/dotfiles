#!/usr/bin/sh

# DISPLAY FETCH

bold=$(tput bold)
norm=$(tput sgr0)
base=$(tput setaf 6)

KERN=$(uname -rv | awk '{print $1;}')

echo -e "${bold}DISTRO\t${base}  ${norm}Arch Linux"
echo -e "${bold}KERNEL\t${base}  ${norm}$KERN"
echo -e "${bold}ZSH${norm}\t$(~/.scripts/ver.sh zsh)"
echo -e "${bold}EMACS${norm}\t$(~/.scripts/ver.sh emacs)"
echo -e "${bold}PKGS${norm}\t$(~/.scripts/neopkg.sh)"
echo -e ""
