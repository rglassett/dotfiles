#!/bin/sh

# Fetch dotfiles
if [[ ! -d "$HOME/.dotfiles" ]]; then
  git clone git@github.com:rglassett/dotfiles.git $HOME/.dotfiles
fi

# Homebrew installation
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH="/usr/local/bin:$PATH"
brew bundle --file=$HOME/.dotfiles/Brewfile

# Symlink dotfiles
env RCRC=$HOME/.dotfiles/rcrc rcup

# Use zshell
chsh -s $(which zsh)

# Ruby installation
find_latest_ruby() {
  rbenv install --list | grep --invert-match - | tail -1 | sed -e 's/^ *//'
}

eval "$(rbenv init -)"
ruby_version="$(find_latest_ruby)"
rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"

# Bundler config
gem install bundler
rbenv rehash
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# Add iTerm colorschemes
open $HOME/.iTerm2/Solarized\ Dark\ Deutan.itermcolors
open $HOME/.iTerm2/Solarized\ Light\ Deutan.itermcolors

# Install vim plugins
vim "+:PlugInstall" "+:qa"

# OS X configuration
source $HOME/.osx
