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
vim.cmd("highlight ColorColumn guibg=#0a0a0a")

-- Group separador de janelas
vim.api.nvim_set_hl(0, "WinSeparator", {
  fg = "#a4e400",
})

-- Personaliza coluna de numeros
vim.opt.number = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 4

-- Personaliza coluna de numeros
vim.opt.statuscolumn = "%=%{printf('%s ', v:lnum)}%s"

-- Group coluna de numeros
vim.api.nvim_set_hl(0, "LineNr", {
  fg = "#666666",
  bg = "#0a0a0a",
})

-- Group coluna de sinais
vim.api.nvim_set_hl(0, "SignColumn", {
  bg = "#000000",
})

-- Personaliza icons da coluna de sinais
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚",
      [vim.diagnostic.severity.WARN]  = "󰀪",
      [vim.diagnostic.severity.INFO]  = "󰋼",
      [vim.diagnostic.severity.HINT]  = "󰌵",
    },
  },
})

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

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "o" })
    end,
})

vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
}
