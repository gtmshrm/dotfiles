#!/bin/bash
echo "Installing dependencies..."
# Python provider
sudo pip install pynvim
# Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Fzf
sudo pacman -S fzf
# Coc.nvim
sudo pacman -S npm ccls
curl -sL install-node.vercel.app/lts | bash
# Node.js provider
sudo npm install -g neovim

echo "Installing new vim config..."
mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/lua

for f in `find . -regex ".*\.vim$\|.*\.lua$\|.*\.json$"`; do
    rm -rf ~/.config/nvim/$f
    echo $f
    ln -s ~/git/dotfiles/nvim/$f ~/.config/nvim/$f
done

# TODO install 
# 1. clangd: https://clangd.llvm.org/installation.html
# 2. coc-clangd: https://github.com/clangd/coc-clangd
