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
    read -p "File $file already exists, do you want to OVERRIDE it?" -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      echo "Overriding $file in $HOME"
      ln -fs $sourceFile $destinationFile
    else
      echo "Skipping symlinking of $file"
      continue;
    fi
  fi
done

echo "Files successfully linked"

