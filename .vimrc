call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" options for https://github.com/kristijanhusak/vim-hybrid-material theme
" let g:enable_bold_font = 1
" let g:enable_italic_font = 1
" set background=dark
" colorscheme hybrid_reverse

let g:airline_theme = "hybrid"

" disable vi compatibility. apparently it can cause issues
:set nocompatible
" keep lines showing as scroll
:set scrolloff=10

" this is some magic so it's hybrid relative numbers in normal mode, but otherwise just absolute line numbers
" https://jeffkreeftmeijer.com/vim-number/
:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" highlight cursor line
:set cursorline 
:hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE " set the styling for the current line highlighting
:hi CursorLineNr term=bold cterm=bold ctermbg=8 ctermfg=012 gui=bold " set the styling for the current line number highlighting

" 4 character tabs
:set shiftwidth=4
" highlight characters as searching
:set incsearch
" don't make annoying .swap files (i think?)
:set nobackup
" don't wrap on typing
:set nowrap
