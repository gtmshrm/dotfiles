#!/bin/bash
echo "Installing dependencies..."
# python
sudo pip install pynvim
# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# fzf
sudo pacman -S fzf
# coc.nvim
sudo pacman -S npm ccls
curl -sL install-node.vercel.app/lts | bash

echo "Installing new vim config..."
mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/lua

for f in `find . -regex ".*\.vim$\|.*\.lua$\|.*\.json$"`; do
    rm -rf ~/.config/nvim/$f
    echo $f
    ln -s ~/git/dotfiles/nvim/$f ~/.config/nvim/$f
done
