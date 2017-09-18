#!/bin/sh
#JEtsTream installer

if [ -f "./jetstream.desktop" ]; then
	mkdir ~/jetstream
	cp jetstream.desktop ~/.local/share/applications
	xdg-mime default jetsream.desktop applications/x-bittorent
	read -p "Enable OPTION[2]? See README.md for details. [y/n]: " yn
	case $yn in
		[Yy]* ) xdg-mime default jetstream.desktop x-scheme-handler/magnet;;
		[Nn]* ) exit;;
		* ) echo "Just y or n!";;
	esac
fi

if [ ! -f "./jetstream.desktop" ]; then
	echo "Installation path doesn't exist, aborting...!"
fi
