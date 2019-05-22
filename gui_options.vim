if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
if has("win32")
    set renderoptions=type:directx,renmode:4,taamode:1
endif
endif
