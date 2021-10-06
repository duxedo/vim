let g:android_sdk_path = 'C:\Users\Reinhardt\AppData\Local\Android\Sdk'

let g:ycm_use_clangd = 0
let g:ycm_clangd_binary_path = "C:\\Program Files\\LLVM\\bin\\clangd.exe"
let g:ycm_goto_buffer_command = "split"

if has('gui_running')
    if has('nvim')
        GuiFont Fira\ Code:h11
    else
        set guifont=FiraCode_NF:h11:cRUSSIAN:qDRAFT
    endif
endif
