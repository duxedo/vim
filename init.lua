vim.opt.compatible = false
vim.opt.smarttab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.wildmode={"longest", "list", "full"}
vim.opt.wildmenu = true

vim.opt.ruler = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.lazyredraw = true
vim.opt.magic = true
vim.opt.showmatch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 3
vim.opt.autoindent = true
vim.opt.smartindent = true
-- if not vscode
vim.opt.wrap = true
-- end
vim.opt.backspace= { 'indent', 'eol', 'start' }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.laststatus = 2
vim.opt.background = "dark"
vim.opt.timeoutlen = 200
vim.opt.swapfile = false
vim.opt.inccommand = "split"
vim.opt.sessionoptions = {"blank", "buffers", "curdir", "folds", "help", "tabpages", "winsize", "terminal", "resize", "winpos"}
table.insert(vim.opt.diffopt, "vertical")

vim.opt.keymap='russian-jcukenwin'
vim.opt.iminsert=0
vim.opt.imsearch=0

table.insert(vim.opt.rtp, "$HOME/.vim")
vim.opt.history = 500
vim.opt.encoding = "utf-8"

vim.opt.title = true
vim.opt.secure = true


vim.cmd('filetype plugin off')

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
if vim.g.vscode == nil then
    Plug 'airblade/vim-gitgutter'
end
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-sleuth'
Plug 'kana/vim-operator-user'
Plug 'Shougo/vimproc.vim'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'udalov/kotlin-vim'
Plug 'puremourning/vimspector'
Plug 'cdelledonne/vim-cmake'
Plug 'mcchrish/nnn.vim'
Plug('catppuccin/nvim', { as = 'catppuccin' })
Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
Plug 'lifepillar/vim-solarized8'
vim.call('plug#end')
vim.g.catpuccin_flavor = "macchiato"
require("catppuccin").setup()

vim.cmd('filetype plugin indent on')

if vim.g.termguicolors ~= nil then
    vim.opt.termguicolors = true
end

vim.opt.background = 'dark'
vim.cmd('colorscheme catppuccin')
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g.airline_powerline_fonts = 1



