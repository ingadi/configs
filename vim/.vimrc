" General configuration options
set nocompatible    "Use Vim settings rather than vi settings. Must be on top of file
set backspace=indent,eol,start      "Allow backspacing over indentation, line breaks and insertion start
set history=1000        "Set bigger history of executed commands
set showcmd     "Show incomplete commands at the bottom
set noshowmode      "Do not show current mode at bottom
set autoread        "Automatically re-read files if unmodified inside vim
set hidden      "Manage multiple buffers effectively - current buffer can be sent tho the backgroud without writing to disk

" User interface options
set laststatus=2        "Always display the status bar
set ruler       "Always show cursor position
set cursorline      "Hightlight the line currently under cursor
set wildmenu        "Display command line's tab complete options as a menu
set tabpagemax=40       "Maximum number of tab pages that can be opened from the command line
set number      "Show line numbers on the sidebar
set noerrorbells        "Disable beep on errors
set visualbell      "Flash the screen instead of beeping on errors
set mouse=a     "Enable mouse for scrolling and resizing
set background=dark     "Use colors that suit a dark background
set title       "Set the window's title, reflecting the file currently being edited
set listchars=eol:¬,tab:→\ ,trail:¹,space:¹     "Set tab, space and eol characters
set list        "Show tab, space eol characters
colorscheme gruvbox     "Change color scheme

" Status line
set laststatus=2        "Show status line

" Swap and backup file options
set directory=$HOME/.vim/swp//      "Set where to store swap files // - ensure unique file names preventing collistions
set backupdir=~/.vim/.backup//      "Set where to store backup files //- ensure unique file name preventing collisions
"set nobackup       "Disable backup
"set nowb       "Disable writeback

" Indendation options
set autoindent      "New line inherit the indentation of previous lines
filetype plugin indent on       "Smart auto indentation (Instead of smart indent option)
set tabstop=4       "Show existing tab with 4 spaces width
set shiftwidth=2        "When indenting with '>', use 2 spaces width
set expandtab       "On pressing tab, insert 4 spaces
set nowrap      "Don't wrap lines

" Search options
set incsearch       "Find the next match as we type the search
set hlsearch        "Highlight searches by default
set ignorecase      "Ignore case when searching
set smartcase       "Unless you type a captial

" Text rendering options
set encoding=utf-8      "Use an encoding that supports Unicode
set linebreak       "Wrap lines at convinient points, avoid wrapping a line in the middle of a word
set scrolloff=3     "The number of screen columns to keep to the left and right of the cursor
set sidescrolloff=5     "The number of screen columns to keep to the left and right of the cursor
syntax enable       "Enable syntax highlighting

" Miscellaneous Options
set confirm     "Display a confirmation dialog when closing an unsaved file
set nomodeline      "Ignore file's mode lines; use vimrc configs instead
set nrformats-=octal        "Intrepret octal as a decimal when incrementing numbers
set shell=/bin/bash     "The shell to execute commands
set spell       "Enable spellchecking
set exrc        "Enable project specific vimrc

" Vim jumps to last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" Package manager

" Normally this if-block is not needed, because `:set nocp` is done
" automatically when .vimrc is found. However, this might be useful
" when you execute `vim -u .vimrc` from the command line.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('morhetz/gruvbox')
call minpac#add('itchyny/lightline.vim')

" Load the plugins right now. (optional)
"packloadall
