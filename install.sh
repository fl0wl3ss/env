#!/bin/sh

# update pkgs
sudo apt update
# install python
sudo apt install -y python3 python3-pip

# install fish
sudo apt install -y fish

# vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install tmux-powerline
git clone https://github.com/fl0wl3ss/tmux-powerline.git ~/Github/tmux-powerline

# copy configs
mkdir -p ~/bin
cp .tmux.conf ~/
cp .vimrc ~/
cp config.fish ~/.config/fish
cp vpnbash.sh ~/bin
cp mypython ~/bin
# debug env
sudo apt install build-essential
sudo apt install gdb
git clone https://github.com/hugsy/gef.git ~/Github/gef



