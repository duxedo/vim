set nocompatible
nnoremap <Space> <Nop>
let mapleader = " "
set rtp+=$HOME/.vim
set history=500
set encoding=utf-8

let path = expand('<sfile>:p:h')

exec 'source' path . '/plugins.vim'
exec 'source' path . '/options.vim'
exec 'source' path . '/gui_options.vim'
exec 'source' path . '/statusline.vim'

let g:android_sdk_path = 'C:\Work\Android\Sdk'
let g:ackprg = 'ag --vimgrep'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <M-h> :bp<CR>
nnoremap <M-l> :bn<CR>
nnoremap <M-s> :vert sb<CR>
nnoremap <M-c> :bd

nmap ; :Files<CR>
if !exists('g:vscode')
    nmap <Leader>o :FZF<CR>
endif    

if !exists('g:vscode')
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk
endif    

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <C-Space>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-s>': 'vsplit',
      \ '<c-v>': 'split' }

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"inoremap ,, <Esc>/<++><Enter>"_c4l
"vnoremap ,, <Esc>/<++><Enter>"_c4l
"map ,, <Esc>/<++><Enter>"_c4l

"autocmd FileType cpp inoremap ,c <ESC>bdwiclass <ESC>pa {<CR><++>;<CR>public:<CR><ESC>pa(){}<CR>~<ESC>pa(){}<CR>private:<CR><++>;};

if has("win32") && !exists('g:vscode')
    map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR> 
endif

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

inoremap =<BS> <Esc>

if !exists('g:vscode')
nnoremap <F3> :cp<CR>
nnoremap <F4> :cn<CR>
nnoremap <F5> :Neomake!<CR>
endif    

nnoremap <Leader>, :bp<CR>
nnoremap <Leader>. :bn<CR>
nnoremap <Leader>/ :ls<CR>:b

nnoremap <Leader>cd :cd %:p:h<CR>
cmap w!! w !sudo tee > /dev/null %

highlight Comment gui=NONE term=NONE

exec 'source' path . '/local.vim'

set exrc
set secure
set title
