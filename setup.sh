#!/bin/bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR DOTFILES_CACHE DOTFILES_EXTRA_DIR
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
DOTFILES_EXTRA_DIR="$HOME/.extra"

# Add executables to path variable
PATH="$DOTFILES_DIR/bin:$PATH"

# Create symlinks

ln -sfv "$DOTFILES_DIR/vim/vimrc" ~/.vimrc
ln -sfv "$DOTFILES_DIR/git/gitconfig" ~/.gitconfig
ln -sfv "$DOTFILES_DIR/X/xinitrc" ~/.xinitrc
ln -sfv "$DOTFILES_DIR/X/XResources" ~/.XResources
ln -sfv "$DOTFILES_DIR/zsh/zlogin" ~/.zlogin
ln -sfv "$DOTFILES_DIR/zsh/zshrc" ~/.zshrc