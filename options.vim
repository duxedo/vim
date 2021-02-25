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
if !exists('g:vscode')
    set wrap
endif
set backspace=indent,eol,start
set splitbelow splitright
set laststatus=2
set background=dark

set timeoutlen=200


set exrc
set noswapfile

set sessionoptions+=resize,winpos,folds,tabpages
set sessionoptions-=options
if has("nvim")
set inccommand=split
endif
set diffopt+=vertical
