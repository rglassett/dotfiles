autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -z edit-command-line && zle -N edit-command-line
autoload -U zmv

bindkey -v
bindkey -M vicmd v edit-command-line
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M viins '^S' history-incremental-search-forward

setopt autocd
setopt promptsubst

for function in $HOME/.zsh/functions/*; do
  source $function
done

if [[ -f /usr/local/etc/profile.d/z.sh ]]; then
  source /usr/local/etc/profile.d/z.sh
  alias j=z
fi

if [[ -d /usr/local/opt/nvm ]]; then
  export NVM_DIR="$HOME/.nvm"
  source /usr/local/opt/nvm/nvm.sh
fi

if [[ -f /usr/local/bin/rbenv ]]; then
  eval "$(rbenv init - zsh)"
fi

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

PS1='%{$fg_bold[blue]%}%c%{$reset_color%} ' # trailing part of pwd
PS1+='$(git_prompt_info)'                   # current git branch
PS1+='%# '                                  # running with privileges?

alias be="bundle exec"
alias l="ls"
alias ll="ls -al"

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
