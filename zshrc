# makes color constants available
autoload -U colors && colors

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
PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

# completion
autoload -Uz compinit
compinit

# batch rename
autoload -U zmv

# history settings
HISTFILE=~/.histfile
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

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
