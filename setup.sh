#!/usr/bin/env bash

src=GitHub/dotfiles
files=".bashrc_pre .gitconfig .gvimrc .tmux.conf .vimrc"

for i in $files;
do
    ln -i -s -T $src/$i ~/$i
done

ln -i -s -T $src/.gitignore.global ~/.gitignore
ln -i -s -T $src/.vim/ ~/.vim

echo '# use settings from my personal .bashrc' > /tmp/.bashrc
echo 'source ~/.bashrc_pre' >> /tmp/.bashrc
echo ' ' >> /tmp/.bashrc
cat ~/.bashrc >> /tmp/.bashrc
mv -i /tmp/.bashrc ~/.bashrc

