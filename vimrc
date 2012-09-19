" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

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
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%{fugitive#statusline()}%=%-16(\ %l,%c-%v\ %)%P

let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let tlist_spec_settings = 'Rspec;c:describe;d:context;f:it'

colorscheme wombat256mod

" map <leader>t :FuzzyFinderTextMate<Enter>
map <leader>d :TlistToggle<Enter>
map <leader>u :GundoToggle<Enter>
map <leader>e :Explore<Enter>

map <Leader>db  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.toggle_breakpoint()<CR>
map <Leader>dv  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.open_variables()<CR>
map <Leader>dm  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.open_breakpoints()<CR>
map <Leader>dt  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.open_frames()<CR>
map <F5>        :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.step()<CR>
map <F7>        :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.finish()<CR>
map <F6>        :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.next()<CR>
map <F8>        :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.continue()<CR>
map <Leader>de  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.exit()<CR>
map <Leader>dd  :call ruby_debugger#load_debugger() <bar> :call g:RubyDebugger.remove_breakpoints()<CR>

map <Leader>y :PBCopy<Enter>
map <Leader>p :PBPaste<Enter>

map <Leader>s :SpaceHi<Enter>

" colors
set t_Co=256

au BufWritePost *.rb,*.js silent! !ctags -R &>/dev/null
let g:Powerline_symbols = 'fancy'
let g:slime_target = "tmux"
