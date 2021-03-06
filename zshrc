# makes color constants available
autoload -U colors && colors

# edit current command in an editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# enable colored output from ls, etc
export CLICOLOR=1

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " %{$fg_bold[magenta]%}${ref#refs/heads/}%{$reset_color%}"
  fi
}
setopt promptsubst
PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}' # ssh username/hostname
PS1+='%{$fg_bold[blue]%}%c'                         # trailing part of pwd
PS1+='%{$reset_color%}$(git_prompt_info) '          # current git branch
PS1+='%# '                                          # running with privileges?

# completion
autoload -Uz compinit
compinit

# batch rename
autoload -U zmv

# history settings
HISTFILE=$HOME/.histfile
HISTSIZE=1024
SAVEHIST=1024

setopt autocd

export VISUAL="vim"
export EDITOR=$VISUAL

bindkey -v

bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^K' kill-line
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^U' kill-whole-line

prepend_to_path() {
  PATH="$1:$PATH"
}

eval "$(rbenv init - zsh)"
prepend_to_path /usr/local/heroku/bin
prepend_to_path $HOME/.bin
prepend_to_path .git/safe/../../bin

export -U PATH

# load autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# load nvm
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

# aliases
[[ -f $HOME/.aliases ]] && source $HOME/.aliases

# load custom executable functions
for function in $HOME/.zsh/functions/*; do
  source $function
done

# Local config
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
