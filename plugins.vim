filetype plugin off

call plug#begin('$HOME/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
if !exists('g:vscode')
Plug 'scrooloose/nerdtree'
endif
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
if !exists('g:vscode')
Plug 'airblade/vim-gitgutter'
endif
Plug 'mileszs/ack.vim'
Plug 'hsanson/vim-android'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'kana/vim-operator-user'
Plug 'Shougo/vimproc.vim'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'udalov/kotlin-vim'
Plug 'puremourning/vimspector'
Plug 'cdelledonne/vim-cmake'

if has('nvim')
 Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
 Plug 'lifepillar/vim-solarized8'
else
  Plug 'altercation/vim-colors-solarized'
  Plug 'lifepillar/vim-solarized8'
endif
call plug#end()            " required

filetype plugin indent on    " required:
