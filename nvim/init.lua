require("config.lazy")

vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
}
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
vim.cmd("set colorcolumn=70")
vim.cmd("set rnu")

-- Mapeamentos no modo normal
vim.keymap.set("n", "j", "h", { noremap = true, silent = true, desc = "Mover para a esquerda (normal)" })
vim.keymap.set("n", "l", "j", { noremap = true, silent = true, desc = "Mover para baixo (normal)" })
vim.keymap.set("n", "ç", "l", { noremap = true, silent = true, desc = "Mover para a direita (normal)" })
vim.keymap.set("n", "Ç", "$", { noremap = true, silent = true, desc = "Ir para o fim da linha (Ç)" })
vim.keymap.set("n", "J", "^", { noremap = true, silent = true, desc = "Ir para o inicio da linha" })
vim.keymap.set("n", "w", "b", { noremap = true, silent = true, desc = "Mover para o inicio da palavra anterior" })
vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copia para area de transferencia" })
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Cola a ultima coisa da area de tranferencia" })
vim.keymap.set("n", "rw", 'diwi', { noremap = true, silent = true, desc = "Deleta paralavra e entre no modo de inserção" })
vim.keymap.set("n", "dç", 'd$', { noremap = true, silent = true, desc = "Deleta do caractere atual até o fim da linha" })
vim.keymap.set("n", "dj", 'd0', { noremap = true, silent = true, desc = "Deleta do caractere atual até o inicio da linha" })
vim.keymap.set("n", "<C-a>", 'ggVG', { noremap = true, silent = true, desc = "Seleciona tudo" })
vim.keymap.set("n", "dl", '(V)d', { noremap = true, silent = true, desc = "Deleta bloco de codigo atual" })
vim.keymap.set("n", "cc", 'yyp', { noremap = true, silent = true, desc = "Duplica linha" })
vim.keymap.set("n", "<leader>a", '==', { noremap = true, silent = true, desc = "Arruma automaticamente a indentação da linha" })

-- Mapeamentos no modo visual
vim.keymap.set("v", "j", "h", { noremap = true, silent = true, desc = "Mover para a esquerda (visual)" })
vim.keymap.set("v", "l", "j", { noremap = true, silent = true, desc = "Mover para baixo (visual)" })
vim.keymap.set("v", "ç", "l", { noremap = true, silent = true, desc = "Mover para a direita (visual)" })
vim.keymap.set("v", "Ç", "$", { noremap = true, silent = true, desc = "Ir para o fim da linha (Ç)" })
vim.keymap.set("v", "J", "^", { noremap = true, silent = true, desc = "Ir para o inicio da linha" })
vim.keymap.set("v", "w", "b", { noremap = true, silent = true, desc = "Mover para o inicio da palavra anterior" })
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copia para area de transferencia" })
vim.keymap.set("v", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Cola a ultima coisa da area de tranferencia" })
vim.keymap.set("v", "cc", 'yP', { noremap = true, silent = true, desc = "Duplica a seleção" })
vim.keymap.set("v", "<leader>a", '==', { noremap = true, silent = true, desc = "Arruma a indentação da seleção" })

-- Navegação entre janelas no modo normal
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", { noremap = true, silent = true, desc = "Move entre as janelas em sentido horario" })

-- lsp keys
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Mostrar diagnostic flutuante" })

-- neotree keymap
vim.keymap.del("n", "<C-n>") -- deleta a tecla padrao
vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

