vim.o.termguicolors = true
vim.cmd('syntax on')
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
vim.cmd("set colorcolumn=80")
vim.cmd("highlight ColorColumn guibg=#4B4B4B")

vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 7


-- Personaliza barra de numeros deixando um espaço e um pipe("|") entre a barra
-- lateral e o codigo
vim.opt.statuscolumn = "%=%{printf('%4s', v:lnum)}  │ "

-- Desativa numeração e barra lateral no Neo-tree
vim.api.nvim_create_autocmd({ "FileType", "BufWinEnter" }, {
  pattern = "neo-tree",
  callback = function(args)
    -- aguarda o Neo-tree terminar a config interna
    vim.schedule(function()
      vim.api.nvim_buf_set_option(args.buf, "number", false)
      vim.api.nvim_buf_set_option(args.buf, "relativenumber", false)
      vim.api.nvim_buf_set_option(args.buf, "statuscolumn", "")
    end)
  end,
})
