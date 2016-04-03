#!/bin/sh

RUBY_VERSION=2.2.2

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle --file=$HOME/dotfiles/Brewfile

chsh -s $(which zsh)

rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"
rbenv shell "$RUBY_VERSION"

gem install bundler
rbenv rehash

number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

if [[ ! -d "$HOME/dotfiles" ]]; then
  git clone git@github.com:rglassett/dotfiles.git $HOME/dotfiles
  env RCRC=$HOME/dotfiles/rcrc rcup
fi

open ~/.iTerm2/Solarized\ Dark\ Deutan.itermcolors
open ~/.iTerm2/Solarized\ Light\ Deutan.itermcolors

vim "+:PlugInstall" "+:qa"

source $HOME/.osx
