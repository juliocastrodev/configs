# .zshrc config file by @juliocastrodev

# --------- Zsh Plugins & Theme
test -d .zplug || git clone https://github.com/zplug/zplug .zplug ; source ~/.zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "softmoth/zsh-vim-mode" && VIM_MODE_VICMD_KEY='jk'
zplug "romkatv/powerlevel10k", as:theme, depth:1 && source ~/.p10k.zsh
zplug check || zplug install ; zplug load
# --------- 

# --------- Aliases
alias ls='ls --color'
alias vim=nvim
alias copy=pbcopy # MacOS
# --------- 
