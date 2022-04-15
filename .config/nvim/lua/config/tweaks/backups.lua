-- backup settings — disable swap and enable backup mode
vim.g.noswapfile = true
vim.g.backup = true

vim.g.backupdir = '~/.vim/backup//'
vim.g.undodir = '~/.vim/undo//'
vim.g.directory = '~/.vim/swap//' -- unsure if really need this
