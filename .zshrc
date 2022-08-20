# .zshrc config file by @juliocastrodev

# --------- Zsh Plugins & Theme
source ~/.zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "softmoth/zsh-vim-mode"
zplug "romkatv/powerlevel10k", as:theme, depth:1 && source ~/.p10k.zsh
zplug load
# --------- 

# --------- Aliases
alias ls='ls --color'
alias vim=nvim
alias copy=pbcopy # MacOS
# --------- 
