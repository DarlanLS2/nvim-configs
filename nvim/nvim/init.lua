require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set hidden")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set scrolloff=8")
vim.cmd("set cmdheight=2")
vim.cmd("set updatetime=100")
vim.cmd("set encoding=utf-8")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("set splitright")
vim.cmd("set splitbelow")
vim.cmd("set autoread")
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Troca as teclas de mover no modo normal
vim.cmd("nnoremap j h")
vim.cmd("nnoremap l j")
vim.cmd("nnoremap ç l")

-- Troca as teclas de mover no modo visal
vim.cmd("vnoremap j h")
vim.cmd("vnoremap l j")
vim.cmd("vnoremap ç l")

-- Troca as teclas de navegação entre janelas
vim.cmd("nnoremap <C-w>j <C-w>h")   
vim.cmd("nnoremap <C-w>l <C-w>j") 
vim.cmd("nnoremap <C-w>ç <C-w>l")  
