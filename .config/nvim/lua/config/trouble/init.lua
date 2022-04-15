-- instead of requiring 'kyazdani42/nvim-web-devicons' manually set the icons.
-- 	i think they are the same from 'ryanoasis/vim-devicons' anyway
require('trouble').setup {
  icons = false,
  fold_open = "", -- icon used for open folds
  fold_closed = "", -- icon used for closed folds
  signs = {
    error = " ",
    warning = " ",
    hint = " ",
    information = " ",
    other = "﫠",
  }
}
