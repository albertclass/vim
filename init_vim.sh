#!/bin/sh
echo "Install vim configurations..."
echo "backup origin vimrc..."
if [ -f "$HOME/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
fi

echo "create new vimrc..."
ln -s ~/.vim/vimrc ~/.vimrc

echo gen system tags
ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q --language-force=c++ -f c++/tags /usr/include

git submodule init
git submodule update

vi +PluginInstall! +qall
