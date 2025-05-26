# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# zsh prompt
eval "$(starship init zsh)"

# zsh plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
eval $(thefuck --alias)

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# aliases
source $HOME/.zsh_aliases

# 1password
source $HOME/.config/op/plugins.sh

# windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"

# mise (version manager)
eval "$(mise activate zsh)"
