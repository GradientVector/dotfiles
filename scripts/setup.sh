#!/usr/bin/env bash

# find directories of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${DIR}/.." > /dev/null
src=`pwd -P`
popd > /dev/null

files=".gitconfig .tmux.conf .vimrc .gvimrc "
for i in $files;
do
    ln -i -s -T $src/$i ~/$i
done
ln -i -s -T $src/.gitignore.global ~/.gitignore

# append the contents of these files
cat $src/.append_bashrc >> ~/.bashrc
cat $src/.append_bash_logout >> ~/.bash_logout

# copy directories
ln -i -s -T $src/.vim/ ~/.vim

