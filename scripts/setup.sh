#!/usr/bin/env bash

src=GitHub/dotfiles
files=".bashrc .bash_logout .profile .gitconfig .tmux.conf .vimrc .gvimrc "

for i in $files;
do
    ln -i -s -T $src/$i ~/$i
done

ln -i -s -T $src/.gitignore.global ~/.gitignore
ln -i -s -T $src/.vim/ ~/.vim

## uncomment if you want to put your settings in a .bashrc_pre
#echo '# use settings from my personal .bashrc' > /tmp/.bashrc
#echo 'source ~/.bashrc_pre' >> /tmp/.bashrc
#echo ' ' >> /tmp/.bashrc
#cat ~/.bashrc >> /tmp/.bashrc
#mv -i /tmp/.bashrc ~/.bashrc

