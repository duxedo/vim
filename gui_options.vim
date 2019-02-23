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