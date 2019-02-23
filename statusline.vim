if has('nvim')
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_powerline_fonts = 1
else
 python3 from powerline.vim import setup as powerline_setup
 python3 powerline_setup()
 python3 del powerline_setup
endif
