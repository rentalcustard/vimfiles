" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

" UNCOMMENT TO USE
"set tabstop=2                    " Global tab width.
"set shiftwidth=2                 " And again, related.
"set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%{fugitive#statusline()}%=%-16(\ %l,%c-%v\ %)%P

let Tlist_Auto_Open = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let tlist_spec_settings = 'Rspec;c:describe;d:context;f:it'

colorscheme wombat256mod

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map <leader>t :FuzzyFinderTextMate<Enter>
map <leader>d :TlistToggle<Enter>
map <leader>u :GundoToggle<Enter>
map <leader>e :Explore<Enter>

map <Leader>db  :call g:RubyDebugger.toggle_breakpoint()<CR>
map <Leader>dv  :call g:RubyDebugger.open_variables()<CR>
map <Leader>dm  :call g:RubyDebugger.open_breakpoints()<CR>
map <Leader>dt  :call g:RubyDebugger.open_frames()<CR>
map <F5>        :call g:RubyDebugger.step()<CR>
map <F7>        :call g:RubyDebugger.finish()<CR>
map <F6>        :call g:RubyDebugger.next()<CR>
map <F8>        :call g:RubyDebugger.continue()<CR>
map <Leader>de  :call g:RubyDebugger.exit()<CR>
map <Leader>dd  :call g:RubyDebugger.remove_breakpoints()<CR>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
