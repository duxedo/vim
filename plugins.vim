filetype plugin off

"let path = expand('<sfile>:p:h')

call plug#begin('$HOME/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
if !exists('g:vscode')
Plug 'scrooloose/nerdtree'
endif
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
Plug 'kana/vim-operator-user'
Plug 'Shougo/vimproc.vim'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'

if has('nvim')
 Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
 Plug 'lifepillar/vim-solarized8'
else
  Plug 'altercation/vim-colors-solarized'
  Plug 'lifepillar/vim-solarized8'
endif
call plug#end()            " required

filetype plugin indent on    " required:
