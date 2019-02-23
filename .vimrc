set nocompatible
nnoremap <Space> <Nop>
let mapleader = " "

set history=500
set encoding=utf-8

filetype plugin off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'hsanson/vim-android'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-eunuch'
Plugin 'kana/vim-operator-user'
Plugin 'Shougo/vimproc.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'scrooloose/nerdcommenter'
if has('nvim')
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
else
 Plugin 'altercation/vim-colors-solarized'
endif
call vundle#end()            " required

filetype plugin indent on    " required:

let g:android_sdk_path = 'C:\Work\Android\Sdk'
let g:ackprg = 'ag --vimgrep'

syntax on
set number
set mouse=a
set number relativenumber

set wildmode=longest,list,full
set wildmenu

set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

set ruler

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set scrolloff=3
set autoindent
set smartindent
set wrap
set backspace=indent,eol,start
set splitbelow splitright
set laststatus=2
set background=dark

set exrc
set noswapfile

if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L

"    set t_Co=256
    set guitablabel=%M\ %t
    if !has('nvim')
        set guifont=Noto_Mono_for_Powerline:h11:cRUSSIAN:qDRAFT
    endif
endif

inoremap jk <Esc>

if has('nvim')
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_powerline_fonts = 1
else
 python3 from powerline.vim import setup as powerline_setup
 python3 powerline_setup()
 python3 del powerline_setup
endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nnoremap . :tabn<CR>
"nnoremap , :tabp<CR> 
nmap ; :Files<CR>
nmap <Leader>o :NERDTreeToggle<CR>

nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

nmap <Leader>gi :YcmCompleter GoToInclude<CR>
nmap <Leader>ge :YcmCompleter GoToDefinition<CR>
nmap <Leader>gd :YcmCompleter GoToDeclaration<CR>

if has('nvim')
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme solarized_nvimqt
else
colorscheme solarized
endif
set sessionoptions+=resize,winpos,folds,tabpages
set sessionoptions-=options
"autocmd VIMEnter * :source C:/work/session.vim
"autocmd VIMLeave * :mksession! C:/work/session.vim

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
inoremap ,, <Esc>/<++><Enter>"_c4l
vnoremap ,, <Esc>/<++><Enter>"_c4l
map ,, <Esc>/<++><Enter>"_c4l
autocmd FileType cpp inoremap ,c <ESC>bdwiclass <ESC>pa {<CR><++>;<CR>public:<CR><ESC>pa(){}<CR>~<ESC>pa(){}<CR>private:<CR><++>;};

