#!/bin/sh

ln -fs ~/dot-files/xinitrc ~/.xinitrc
ln -fs ~/dot-files/xmodmaprc ~/.xmodmaprc
ln -fs ~/dot-files/Xresources ~/.Xresources
ln -fs ~/dot-files/tmux.conf ~/.tmux.conf
ln -fs ~/dot-files/gitconfig ~/.gitconfig
ln -fs ~/dot-files/cwmrc ~/.cwmrc
ln -fs ~/dot-files/config.fish ~/.config/fish/config.fish
ln -fs ~/dot-files/starship.toml ~/.config/starship.toml

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
