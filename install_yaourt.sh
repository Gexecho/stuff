#!/bin/sh
#
# ce script télécharge et compile yaourt et package-query
# usage : ./yaourt_install.sh

echo -n "Procéder à l'installation? [Y/n] "
read yes

function install {
  base=$(pacman -Qs base-devel)
  if [[ $base == "" ]]; then
echo "base-devel package n'est pas installé."
    echo 'Pour installer base-devel fais juste "pacman -S base-devel"'
    exit 1
  else
echo "Retrieving package-query ..."
    curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
    echo "Uncompressing package-query ..."
    tar zxvf package-query.tar.gz
    cd package-query
    echo "Installing package-query ..."
    makepkg -si --noconfirm --asroot # 
    cd ..
    echo "Retrieving yaourt ..."
    curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
    echo "Uncompressing yaourt ..."
    tar zxvf yaourt.tar.gz
    cd yaourt
    echo "Installing yaourt ..."
    makepkg -si --noconfirm --asroot
    echo "Done!"
  fi
}

if [[ $yes == "Y" || $yes == "y" || $yes == "" ]]; then
install
else
echo "Exiting ..."
  exit 1
fi
