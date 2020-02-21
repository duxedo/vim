if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    if has("win32")
        "set renderoptions=type:directx,renmode:3,taamode:1
        let g:solarized_termcolors=256
        colorscheme solarized
    endif
    if has('nvim')
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
        colorscheme solarized_nvimqt
    endif
else
    if !has("win32")
        let g:solarized_termcolors=256
        colorscheme solarized
    else
        set termguicolors
        set background=dark
        let g:solarized_termtrans=0
        colorscheme solarized8
    endif
endif
