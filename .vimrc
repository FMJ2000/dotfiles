# Vim/Neovim configuration file
# uses [gruvbox theme](https://github.com/morhetz/gruvbox).

syntax enable
filetype plugin indent on
set autoindent expandtab tabstop=2 shiftwidth=2
set number
set nohlsearch

if exists("+termguicolors")
  set termguicolors
endif

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  call plug#begin()
    Plug 'morhetz/gruvbox'
  call plug#end()
  autocmd vimenter * ++nested colorscheme gruvbox
endif
