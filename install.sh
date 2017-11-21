#!/bin/sh

set -o pipefail
set -o errexit

# Fetch dotfiles
if [[ ! -d "$HOME/.dotfiles" ]]; then
  git clone https://github.com/rglassett/dotfiles.git $HOME/.dotfiles
fi

# Homebrew installation
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH="/usr/local/bin:$PATH"
brew bundle --file=$HOME/.dotfiles/Brewfile

# Symlink dotfiles
env RCRC=$HOME/.dotfiles/rcrc rcup

# Ruby installation
find_latest_ruby() {
  rbenv install --list | grep --invert-match - | tail -1 | sed -e 's/^ *//'
}

eval "$(rbenv init -)"
ruby_version="$(find_latest_ruby)"
rbenv install "$ruby_version"
rbenv global "$ruby_version"

# Bundler config
gem install bundler
rbenv rehash
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# Node installation
find_latest_node() {
  nvm ls-remote | grep --invert-match - | tail -1 | sed -e 's/^ *//'
}

mkdir -p $HOME/.nvm
source "$(brew --prefix nvm)/nvm.sh"

node_version="$(find_latest_node)"
nvm install $node_version
nvm use $node_version
nvm alias default $node_version

# Add iTerm colorschemes
open $HOME/.iTerm2/Solarized\ Dark\ Deutan.itermcolors
open $HOME/.iTerm2/Solarized\ Light\ Deutan.itermcolors

# Install vim plugins
vim "+:PlugInstall" "+:qa"

# Use zshell
echo '/usr/local/bin/zsh' | sudo tee -a /usr/shells
chsh -s /usr/local/bin/zsh
