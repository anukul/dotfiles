# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# antibody
source <(antibody init)
##
antibody bundle romkatv/powerlevel10k
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
##
antibody bundle zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
##
antibody bundle zsh-users/zsh-completions
autoload -Uz compinit && compinit -i
##

# generated using `p10k configure`
source ~/.p10k.zsh

# p10k overrides
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_package_name
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='$'

# ls colors
export CLICOLOR=1

# general aliases
alias c='clear'
alias l='ls'
alias ll='ls -lh'
alias m='micro'
alias ..='cd ..'

# git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gc='git commit'

# gopath
export GOPATH="$HOME/code/gopath"
export PATH="$PATH:$GOPATH/bin"

# local binaries
export PATH="$PATH:$HOME/.local/bin"

# rust cargo binaries
export PATH="$HOME/.cargo/bin:$PATH"
