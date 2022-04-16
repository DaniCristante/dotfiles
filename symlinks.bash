#!/bin/bash

filesToLink=(
		".zshrc"
		".zpreztorc"
		".vimrc"
		".bash_aliases"
)

echo "setting up symlinks..."

for file in "${filesToLink[@]}"; do

		sourceFile="$PWD/$file"
		destinationFile="$HOME/$file"
		
		if [ ! -f $file ]; then
				ln -fs $sourcefile $destinationFile
		else
				read -p "File aready exists, override it?" yn
				case $yn in
						[Yy]* 
				esac
		fi
done
