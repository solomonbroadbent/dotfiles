# priority tweaks
source ~/.config/zsh/tweaks/powerlevel10k-instant-prompt.zsh

# plugins
local plugins="~/.config/zsh/plugins"
source ~/.config/zsh/plugins/autosuggestions/init.zsh
source ~/.config/zsh/plugins/syntax-highlighting/init.zsh
source ~/.config/zsh/plugins/history-substring-search/key-binds.zsh
source ~/.config/zsh/plugins/history-substring-search/init.zsh # ensure loaded —after— syntax highlighting
source ~/.config/zsh/plugins/vi-mode/init.zsh

# key-binds

source ~/.config/zsh/aliases/init.zsh
source ~/.config/zsh/tweaks/init.zsh
source ~/.config/zsh/autocompletion/init.zsh
source ~/.config/zsh/themes/powerlevel10k/init.zsh
