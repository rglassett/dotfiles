#!/bin/sh

# TODO: sudo xcodebuild -license ? Also write functions to do this stuff
# conditionally

RUBY_VERSION=2.2.2

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install zsh
chsh -s $(which zsh)

brew install autojump
brew install git
brew install heroku-toolbelt
brew install imagemagick
brew install node
brew install phantomjs
brew install postgresql
brew install qt
brew install rbenv
brew install readline
brew install reattach-to-user-namespace
brew install ruby-build
brew install sqlite
brew install the_silver_searcher
brew install tmux
brew install vim

brew install openssl
brew unlink openssl && brew link openssl --force

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim "+:PluginInstall" "+:qa"

rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"
rbenv shell "$RUBY_VERSION"

gem install bundler
rbenv rehash

brew install caskroom/cask/brew-cask

brew cask install dropbox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install slack

brew tap thoughtbot/formulae
brew install rcm

brew cleanup

env RCRC=$HOME/dotfiles/rcrc rcup
