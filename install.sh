#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"




# used for sonas_scripts
ln -s ${BASEDIR}/.netrc ~/.netrc
# zsh
if [ -f ~/.zshrc ]; then
        mv ~/.zshrc ~/.zshrc.local
fi
ln -s ${BASEDIR}/zsh/.zshrc ~/.zshrc
if [ -f ~/.zsh_history ]; then
        mv ~/.zsh_history ~/.zsh_history_local
fi
ln -s ${BASEDIR}/zsh_history ~/.zsh_history
# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
# tmux
ln -s ${BASEDIR}/tmux/.tmux.conf ~/.tmux.conf
# bash
if [ -f ~/.bash_profile ]; then
        mv ~/.bash_profile ~/.bash_profile.local
fi
ln -s ${BASEDIR}/bash_profile ~/.bash_profile
# gnuplot
ln -s ${BASEDIR}/gnuplot_history ~/.gnuplot_history
# vim
ln -s ${BASEDIR}/vim ~/.vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
# iterm2
ln -s ~/.dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
