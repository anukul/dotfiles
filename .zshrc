# powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# load antibody
source <(antibody init)

# load antibody plugins
antibody bundle romkatv/powerlevel10k
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
###
antibody bundle zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
###
antibody bundle zsh-users/zsh-completions
autoload -Uz compinit
compinit -i
###


# to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh

# general aliases
alias c='clear'
alias ls='ls -G'
alias l='ls'
alias ll='ls -lh'
alias m='micro'
alias ..='cd ..'

# git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gc='git commit'

export GOPATH=$HOME/code/gopath
export PATH=$PATH:$GOPATH/bin
