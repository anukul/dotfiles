# enable powerlevel10k instant prompt. should stay close to the top of ~/.zshrc.
# initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

# base16 shell
BASE16_SHELL="$HOME/.config/base16-shell/"
eval "$("$BASE16_SHELL/profile_helper.sh")"

# load antibody
source <(antibody init)

# load antibody plugins
antibody bundle romkatv/powerlevel10k
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions

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
