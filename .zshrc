# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

setopt interactivecomments

# linuxbrew
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# antibody
source <(antibody init)

antibody bundle romkatv/powerlevel10k
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
##
antibody bundle zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
##

##
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
##

# generated using `p10k configure`
source ~/.p10k.zsh

# p10k overrides
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_package_name
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='$'

# general aliases
alias c='clear'
alias ls='exa'
alias l='ls'
alias ll='ls -lh'
alias m='micro'
alias ..='cd ..'
alias cat='bat'
alias du='dust'

alias k='kubectl'
alias dc='docker-compose'
alias t='tubectl'
alias mk='minikube'``
alias be='bundle exec'

# git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gc='git commit'

# asdf
##
hash brew 2>/dev/null && {
	. $(brew --prefix asdf)/asdf.sh
}

# add completions to $fpath
fpath=($fpath ${ASDF_DIR}/completions)
# load completions
autoload -Uz compinit && compinit

# add binaries to $PATH
export PATH=$HOME/.asdf/shims:$PATH
##

# gopath
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/code/gopath
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# local binaries
export PATH=$PATH:$HOME/.local/bin

# node yarn binaries
export PATH=$PATH:$(yarn global bin)

# python binaries
export PATH=$PATH:$HOME/Library/Python/3.9/bin

# rust cargo binaries
export PATH=$PATH:$HOME/.cargo/bin

# postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# android studio (required by react native)
# note: android studio has an embedded JDK
# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"``
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/Library/Python/3.9/bin/virtualenvwrapper.sh
