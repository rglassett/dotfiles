# Dotfiles

### Requirements

Set zsh as your login shell:

    chsh -s $(which zsh)

### Install

Clone onto your laptop:

    git clone git://github.com/rglassett/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

This command will create symlinks for config files in your home
directory.  Setting the `RCRC` environment variable tells `rcup` to use
standard configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of the
  `dotfiles` repository but do not need to be symlinked in.
* Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`

You can safely run `rcup` multiple times to update:

    rcup

### Make your own customizations

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.git_template.local/*`
* `~/.gitconfig.local`
* `~/.gvimrc.local`
* `~/.psqlrc.local` (we supply a blank `.psqlrc.local` to prevent `psql`
  from throwing an error, but you should overwrite the file with your
  own copy)
* `~/.tmux.conf.local`
* `~/.vimrc.local`
* `~/.vimrc.bundles.local`
* `~/.zshenv.local`
* `~/.zshrc.local`
* `~/.zsh/configs/*`

To extend your `git` hooks, create executable scripts in
`~/.git_template.local/hooks/*` files.

### zsh Configurations

Additional zsh configuration can go under the `~/.zsh/configs`
directory. This has two special subdirectories: `pre` for files that
must be loaded first, and `post` for files that must be loaded last.

For example, `~/.zsh/configs/pre/virtualenv` makes use of various shell
features which may be affected by your settings, so load it first:

    # Load the virtualenv wrapper
    . /usr/local/bin/virtualenvwrapper.sh

Setting a key binding can happen in `~/.zsh/configs/keys`:

    # Grep anywhere with ^G
    bindkey -s '^G' ' | grep '

Some changes, like `chpwd`, must happen in `~/.zsh/configs/post/chpwd`:

    # Show the entries in a directory whenever you cd in
    function chpwd {
      ls
    }

This directory is handy for combining dotfiles from multiple teams; one
team can add the `virtualenv` file, another `keys`, and a third `chpwd`.

The `~/.zshrc.local` is loaded after `~/.zsh/configs`.
