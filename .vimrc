call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" lsp etc
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" themes
Plug 'mhartington/oceanic-next'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" icons
Plug 'ryanoasis/vim-devicons' " apparently should be loaded last

call plug#end()

" needed for hybrid-material or oceanic-next theme to work
if (has("termguicolors"))
  set termguicolors
endif

" options for https://github.com/vim-airline/vim-airline
let g:airline_section_z = '' " turn off file position
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " don't need to be told when file encoding is utf-8
let g:airline_skip_empty_sections = 1 " 

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline_left_alt_sep = "\uE0B5" " haven't seen these thinner ones actually get used...
let g:airline_right_alt_sep = "\uE0B7"

" options for https://github.com/kristijanhusak/vim-hybrid-material theme
" let g:enable_bold_font = 1
" let g:enable_italic_font = 1
" set background=dark
" let g:airline_theme = 'hybrid'
" colorscheme hybrid_material

" options for https://github.com/mhartington/oceanic-next
" syntax enable
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:airline_theme='oceanicnext'
" colorscheme OceanicNext

" options for https://github.com/kaicataldo/material.vim
let g:airline_theme = 'material'
" let g:airline_theme = 'hybrid'
let g:material_theme_style = 'default'
let g:material_terminal_italics = 1
colorscheme material

" things for https://github.com/ryanoasis/vim-devicons
set encoding=UTF-8
let g:airline_powerline_fonts = 1
set guifont=Fira_Code:h14


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
