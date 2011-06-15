" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Mensch:h12            " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=72 columns=149          " Window dimensions.
set transp=5

" Uncomment to use.
" set guioptions-=r                 " Don't show right scrollbar

colorscheme wombat256mod


" Do not use modal alert dialogs! (Prefer Vim style prompt.)
" http://stackoverflow.com/questions/4193654/using-vim-warning-style-in-gvim
set guioptions+=c
