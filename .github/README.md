# setup on new machine
- `cd $HOME`
- `git clone --bare git@github.com:solomonbroadbent/dotfiles $HOME/.dotfiles.git`
- `alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"`
- `dotfiles checkout`
- `dotfiles config --local status.showUntrackedFiles no`
https://www.atlassian.com/git/tutorials/dotfiles
TODO: create script using bit.do so can run like `curl -Lks http://bit.do/dotfiles-install | /bin/zsh`

# pre-reqs
- add `alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"` to zsh aliases
- setup repo `dotfiles config status.showUntrackedFiles no` 

# nvim
- install packer `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim`
- `:checkhealth nvim-lsp-installer`

## packer extensions
-- in nvim `:PackerSync`

## lsp servers

# git
- add private keys

# hammerspoon — could setup git submodules maybe
- clone spoons to .hammerspoon (eg. git clone https://github.com/AdamWagner/stackline ~/.hammerspoon/stackline

