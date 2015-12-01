# Dotfiles

### Installation

Download and run the install script:

```sh
curl https://raw.githubusercontent.com/rglassett/dotfiles/master/install.sh | sh
```

Alternatively, clone the repository, review/edit the dotfiles, and
symlink them:

```sh
git clone git@github.com:rglassett/dotfiles.git $HOME/dotfiles

brew tap thoughtbot/formulae
brew install rcm

env RCRC=$HOME/dotfiles/rcrc rcup
```

Much of this configuration is stolen from the [Thoughtbot dotfiles
repo][https://github.com/thoughtbot/dotfiles].
