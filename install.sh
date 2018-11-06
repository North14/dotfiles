#!/bin/bash

arch=$(cat arch)

for package in $arch
do
	echo -n "Do you want to install $package packages?"
	read answer
	if [ "$answer" != "${answer#[Yy]}" ]; then
		sudo pacman -S "$package"
	fi
done


aur=$(cat aur)
for package in $aur
do
	echo -n "Do you want to install $package packages?"
	read answer
	if [ "$answer" != "${answer#[Yy]}" ]; then
		trizen -S "$package"
	fi
done





src="$PWD""/"
dst="$HOME""/"
files=$(cat files)

for file in $files
do
	echo -n "Do you want to overwrite $file"
	read answer
	if [ "$answer" != "${answer#[Yy]}" ] ;then
		if [ -f "$file" ]; then
			mkdir -p "$dst""$file"
		fi
		cp "$src""$file" "$dst""$file"
	fi
done


