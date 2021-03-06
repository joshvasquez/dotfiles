#!/bin/bash

#shamelessly pulled from someone who did so from someone else:
# https://victoria.dev/blog/how-to-set-up-a-fresh-ubuntu-desktop-using-only-dotfiles-and-bash-scripts/
dotfilesDir=$(pwd)
function linkDotFile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}
# ensures that .config exists before running so it doesn't just silently fail
mkdir -p $HOME/.config
linkDotFile .zshrc
linkDotFile .zprofile 
linkDotFile .tmux.conf
linkDotFile .zsh
linkDotFile .config/nvim
linkDotFile .hammerspoon
linkDotFile .gitignore_global
linkDotFile .gitconfig
linkDotFile .tmux

#linkDotFile .config # directory

