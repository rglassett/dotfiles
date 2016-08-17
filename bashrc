shopt -s autocd   # cd into directory names used as bare words
shopt -s cmdhist  # store multi-line commands in same history entry
shopt -s globstar # recursive path expansion with **

export CLICOLOR=1

HISTFILE=$HOME/.bash_history
HISTSIZE=1024
SAVEHIST=1024

# set -o vi
export VISUAL="vim"
export EDITOR=$VISUAL

source ~/.git-completion.bash
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " ${ref#refs/heads/}"
  fi
}

blue='\[\e[1;34m\]'
green='\[\e[1;32m\]'
magenta='\[\e[1;35m\]'
reset='\[\e[0m\]'

PS1="$blue\W$reset"                      # trailing part of pwd
PS1+="$magenta\$(git_prompt_info)$reset" # current git branch
PS1+=" % "

prepend_to_path() {
  PATH="$1:$PATH"
}

eval "$(rbenv init -)"
prepend_to_path /usr/local/heroku/bin
prepend_to_path $HOME/.bin
prepend_to_path .git/safe/../../bin
prepend_to_path node_modules/.bin

export PATH

# load autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# load nvm (slow, see link below)
# https://github.com/creationix/nvm/issues/860
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

[[ -f $HOME/.bashrc.local ]] && source $HOME/.bashrc.local

# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status
  fi
}

# Complete g like git
__git_complete g __git_main
