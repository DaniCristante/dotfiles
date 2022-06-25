#!/bin/bash

filesToLink=(
  ".zshrc"
  ".zpreztorc"
  ".vimrc"
  ".bash_aliases"
  ".gitconfig"
  ".gitignore"
)

echo "setting up symlinks..."

for file in "${filesToLink[@]}"; do
  sourceFile="$PWD/$file"
  destinationFile="$HOME/$file"
  if [ ! -e $destinationFile ]; then
    ln -fs $sourceFile $destinationFile
  else
    read -p "File $file already exists, do you want to OVERRIDE it?" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      echo
      echo "Overriding $file in $HOME"
      rm -rf $destinationFile
      ln -fs $sourceFile $destinationFile
    else
      echo "Skipping symlinking of $file"
      continue;
    fi
  fi
done
