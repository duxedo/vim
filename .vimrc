set nocompatible
nnoremap <Space> <Nop>
let mapleader = " "

set history=500
set encoding=utf-8

let path = expand('<sfile>:p:h')

exec 'source' path . '/plugins.vim'
exec 'source' path . '/options.vim'
exec 'source' path . '/gui_options.vim'
exec 'source' path . '/statusline.vim'

let g:android_sdk_path = 'C:\Work\Android\Sdk'
let g:ackprg = 'ag --vimgrep'

inoremap jk <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
inoremap ,, <Esc>/<++><Enter>"_c4l
vnoremap ,, <Esc>/<++><Enter>"_c4l
map ,, <Esc>/<++><Enter>"_c4l
autocmd FileType cpp inoremap ,c <ESC>bdwiclass <ESC>pa {<CR><++>;<CR>public:<CR><ESC>pa(){}<CR>~<ESC>pa(){}<CR>private:<CR><++>;};
map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR> 

