# .zshrc config file by @juliocastrodev

# --------- Zsh Plugins
source ~/.zplug/init.zsh
zplug "plugins/git",   from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "softmoth/zsh-vim-mode"
zplug 'dracula/zsh', as:theme
zplug load
# --------- 

# --------- Aliases
alias ls='ls --color'
alias vim=nvim
alias copy=pbcopy # MacOS
# --------- 
