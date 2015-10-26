# Dotfiles

### Installation

Set zsh as your login shell:

    chsh -s $(which zsh)

Clone onto your laptop:

    git clone git://github.com/rglassett/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

### Inspiration

- [Thoughtbot][https://github.com/thoughtbot/dotfiles]
