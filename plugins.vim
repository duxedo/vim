filetype plugin off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'
if !exists('g:vscode')
Plugin 'scrooloose/nerdtree'
endif
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
if !exists('g:vscode')
Plugin 'airblade/vim-gitgutter'
endif
Plugin 'mileszs/ack.vim'
Plugin 'hsanson/vim-android'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-eunuch'
Plugin 'kana/vim-operator-user'
Plugin 'Shougo/vimproc.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'scrooloose/nerdcommenter'
Plugin 'neomake/neomake'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kshenoy/vim-signature'

if has('nvim')
 Plugin 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
 Plugin 'lifepillar/vim-solarized8'
else
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'lifepillar/vim-solarized8'
endif
call vundle#end()            " required

filetype plugin indent on    " required:
