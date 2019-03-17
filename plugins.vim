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
Plugin 'neomake/neomake'
if has('nvim')
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
else
 Plugin 'altercation/vim-colors-solarized'
endif
call vundle#end()            " required

filetype plugin indent on    " required: