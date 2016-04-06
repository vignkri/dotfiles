set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages vundle
Plugin 'VundleVim/Vundle.vim'

" Interface
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattboehm/vim-accordion'
Plugin 'junegunn/goyo.vim'                  " distraction free writing
Plugin 'mhinz/vim-startify'                 " start-page for vim
Plugin 'vim-scripts/Colour-Sampler-Pack'

" Syntax
Plugin 'scrooloose/syntastic'
Plugin 'jiangmiao/auto-pairs'               " inserts brackets, parens, quotes in pairs
Plugin 'scrooloose/nerdcommenter'

" Languages
Plugin 'tpope/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'klen/python-mode'
Plugin 'vim-latex/vim-latex'
Plugin 'Vim-R-plugin2'

" Completion
Plugin 'ervandew/supertab'

" Code Display
Plugin 'flazz/vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'

" Integrations
Plugin 'tpope/vim-fugitive'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim' "Have to set up vim-shell

call vundle#end()

filetype plugin on

" ==== Plugin Settings ==== "

"Split navigation and creation
" /creation
set splitright
set splitbelow

"NERDTree
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
" /git-nerd-tree configuration
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"Airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='papercolor'
let g:AirlineTheme='papercolor'

"Supertab
" /scrolls down the list instead of up
let g:SuperTabDefaultCompletionType = "<c-n>"

"Vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

"Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-D-G> :Goyo<cr>

" ==== Sensible Settings ==== "

colorscheme jellybeans      " colors

syntax on                   " Enables syntax highlighting
set hidden                  " hides buffers
set wrap                    " soft wrap text
set incsearch               " fuzzy searching
set number                  " show line numbers

" autocmd InsertEnter * :set relativenumber
" autocmd InsertLeave * :set number

set tabstop=4       " set tab size to 4 spaces
set expandtab       " insert spaces instead of tabs
set shiftround      " indent to nearest tabstop
set numberwidth=4   " width of line number field
set shiftwidth=4    " default number of spaces for indentation

set autochdir       " autoupdate current director
set backup          " automatic backup
set cursorline      " show cursor line

set noerrorbells    " disable annoyring system bells
set noswapfile      " disable swap files for the files
set showmatch       " show matching parantheses

set ignorecase      " ignore case when searching

set clipboard+=unnamedplus      " Use system clipboard

set go+=a           " visual selection automatically copied to clipboard
set title           " changes the terminal's title
set autoread        " reload the file when it has been changed outside of vim

set spelllang=en_uk         " define default dictionary for spell checking

" List of files ignored by vim
set wildignore=*.swp,*.bak,*.pyc,*.class,*.py~
set nobackup
set nowritebackup

" ==== Key remap ==== "
" /split navigation
"nnoremap <S-J> <C-W><C-J>
"nnoremap <S-K> <C-W><C-K>
"nnoremap <S-L> <C-W><C-L>
"nnoremap <S-H> <C-W><C-H>

" /buffer navigation
" nnoremap <C-L> <C-^>

" :tab Navigation
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>