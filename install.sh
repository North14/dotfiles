#!/bin/bash

src="$PWD""/"
dst="$HOME""/test/"
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


