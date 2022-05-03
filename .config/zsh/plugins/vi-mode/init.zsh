# TODO: setup git submodules
# install with:
# git clone https://github.com/jeffreytse/zsh-vi-mode.git ~/.config/zsh/plugins/vi-mode/vi-mode

# this fixes issue with zsh-history-substring-search arrows not working in zsh "insert mode"
#  causes pluging to initialise the plugin as soon as it's sourced.
#  docs: https://github.com/jeffreytse/zsh-vi-mode#initialization-mode
ZVM_INIT_MODE=sourcing

source ~/.config/zsh/plugins/vi-mode/vi-mode/zsh-vi-mode.plugin.zsh
