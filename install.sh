#!/bin/bash

sudo apt install neovim
# Attempt to move the vimrc file
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
ln -f init.vim ~/.config/nvim/init.vim
echo linked the .vimrc
touch ~/.config/nvim/dayinit
ln -f dayinit ~/.config/nvim/dayinit
echo linked the dayinit
touch ~/.config/nvim/nightinit
ln -f nightinit ~/.config/nvim/nightinit
echo linked the nightinit
cp dayvim.sh ~/.config/nvim/dayvim.sh
echo coppied dayvim script
cp nightvim.sh ~/.config/nvim/nightvim.sh
echo coppied nightvim script

touch ~/.tmux.conf
ln -f TGB.tmux.conf ~/.tmux.conf
echo linked tmux.conf

touch ~/.bashrc
ln -f bashrc ~/.bashrc
echo linked bashrc

touch ~/.bash_profile
ln -f bash_profile ~/.bash_profile
echo linked bash profile

touch ~/.gitconfig
ln -f TGB.gitconfig ~/.gitconfig
echo linked git config

# Make dirs for the vimrc
mkdir ~/.backup

echo making bundle and auto load folders
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
echo made autoload and bundle dir in ~/.config/nvim

# cd into directory and download all of the plugins
echo downloading git repos for plugins
cd ~/.config/nvim/bundle
echo cloning ctrlp
git clone https://github.com/ctrlpvim/ctrlp.vim.git
echo cloning nerdtree
git clone https://github.com/scrooloose/nerdtree.git
echo cloning superTab
git clone https://github.com/ervandew/supertab.git
mkdir ~/.config/nvim/colors
echo cloning solarized
git clone https://github.com/altercation/vim-colors-solarized.git
ln vim-colors-solarized/colors/solarized.vim ~/.config/nvim/colors/solarized.vim
echo cloning syntax plugins
git clone https://github.com/exu/pgsql.vim.git
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/leafgarland/typescript-vim.git
