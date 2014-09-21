#!/bin/sh

# homebrew
if ! type "brew" > /dev/null; then
    ruby -e '$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)'
fi

# nodebrew
if ! type "nodebrew" > /dev/null; then
    curl -L git.io/nodebrew | perl - setup
fi

# neobundle.vim
bundle_path=~/dotfiles/.vim/bundle
if [ ! -d $bundle_path ]; then
    mkdir -p $bundle_path
    git clone git://github.com/Shougo/neobundle.vim ${bundle_path}/neobundle.vim
fi

# symlinks
DOT_FILES=( .vim .vimrc .gvimrc .bashrc .bash_profile .inputrc )

for file in ${DOT_FILES[@]}
do
  if [ -e ~/$file ]; then
    echo "$file already exists"
  else
    ln -s ~/dotfiles/$file ~/$file
    echo "Symlink was created: $file"
  fi
done

# vim directories
VIM_DIRECTORIES=( backup swap undo )
for directory in ${DOT_FILES[@]}
do
  if [ -d ~/$directory ]; then
    echo "$directory already exists"
  else
    mkdir ~/.vim/$directory
    echo "Directory was created: $directory"
  fi
done
