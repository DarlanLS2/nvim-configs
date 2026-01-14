local Keymaps = {}

function Keymaps.normal()
  vim.keymap.set("n", "j", "h", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para direita"
  })

  vim.keymap.set("n", "l", "j", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para baixo"
  })

  vim.keymap.set("n", "ç", "l", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para direita"
  })

  vim.keymap.set("n", "Ç", "$", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o fim da linha"
  })

  vim.keymap.set("n", "J", "^", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o inicio da linha"
  })

  vim.keymap.set("n", "n", "b", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o inicio da palavra anterior"
  })

  vim.keymap.set("n", "m", "e", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o fim da proxima palavra"
  })

  vim.keymap.set("n", "<leader>y", '"+y', {
    noremap = true,
    silent = true,
    desc = "Copiar para area de transferencia(Ctrl+c)"
  })

  vim.keymap.set("n", "<leader>p", '"+p', {
    noremap = true,
    silent = true,
    desc = "Colar texto da area de tranferencia(Ctrl+v)"
  })

  vim.keymap.set("n", "2o", "o<Esc>o", {
    noremap = true,
    silent = true,
    desc = "Pular duas linhas para baixo e entrar no modo de inserção"
  })

  vim.keymap.set("n", "2O", "O<Esc>O", {
    noremap = true,
    silent = true,
    desc = "Pular duas linhas para cima e entrar no modo inserção"
  })

  vim.keymap.set("n", "dç", 'd$', {
    noremap = true,
    silent = true,
    desc = "Apagar do caractere sob o cursor até o fim da linha"
  })

  vim.keymap.set("n", "dj", 'd0', {
    noremap = true,
    silent = true,
    desc = "Apagar do caractere sob o cursor até o inicio da linha"
  })

  vim.keymap.set("n", "x", 'X', {
    noremap = true,
    silent = true,
    desc = "Apagar caractere anterior"
  })

  vim.keymap.set("n", "<C-a>", 'ggVG', {
    noremap = true,
    silent = true,
    desc = "Selecionar tudo"
  })

  vim.keymap.set("n", "dl", '(V)d', {
    noremap = true,
    silent = true,
    desc = "Apagar o bloco de codigo sob o cursor"
  })

  vim.keymap.set("n", "cc", 'yyp', {
    noremap = true,
    silent = true,
    desc = "Duplicar a linha sob o cursor"
  })

  vim.keymap.set("n", "<leader>a", '==', {
    noremap = true,
    silent = true,
    desc = "Arrumar a indentação da linha sob o cursor"
  })

  vim.keymap.set("n", "<C-k>", "{", {
    noremap = true,
    silent = true,
    desc = "Mover para o início do bloco"
  })

  vim.keymap.set("n", "<C-l>", "}", {
    noremap = true,
    silent = true,
    desc = "Mover para o fim do bloco"
  })

  vim.keymap.set("n", "<leader>sw", function()
    local word = vim.fn.expand("<cword>")
    local cmd = string.format("%%s/\\<%s\\>/", word)
    vim.api.nvim_feedkeys(":" .. cmd, "n", false)
  end, {
    noremap = true,
    silent = true,
    desc = "Substituir palavra sob cursor"
  })

  vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", {
    silent = true,
    desc = "Limpar highlight de busca"
  })
end

function Keymaps.visual()
  -- Mapeamentos no modo visual
  vim.keymap.set("v", "j", "h", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para a esquerda"
  })

  vim.keymap.set("v", "l", "j", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para baixo"
  })

  vim.keymap.set("v", "ç", "l", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para a direita"
  })

  vim.keymap.set("v", "Ç", "$", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o fim da linha"
  })

  vim.keymap.set("v", "J", "^", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o inicio da linha"
  })

  vim.keymap.set("v", "w", "b", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o inicio da palavra anterior"
  })

  vim.keymap.set("v", "<leader>y", '"+y', {
    noremap = true,
    silent = true,
    desc = "Copiar para area de transferencia(Ctrl+c)"
  })

  vim.keymap.set("v", "<leader>p", '"+p', {
    noremap = true,
    silent = true,
    desc = "Colar texto da area de tranferencia(Ctrl+v)"
  })

  vim.keymap.set("v", "cc", 'yP', {
    noremap = true,
    silent = true,
    desc = "Duplicar o texto selecionado"
  })

  vim.keymap.set("v", "<leader>a", '==', {
    noremap = true,
    silent = true,
    desc = "Arrumar a indentação do texto selecionado"
  })

  vim.keymap.set("v", ";;", 'gcc', {
    noremap = true,
    silent = true,
    desc = "Comentar o texto selecionado"
  })
end

function Keymaps.insert()
  vim.keymap.set("i", "<C-j>", "<C-w>", {
    noremap = true,
    silent = true,
    desc = "Apagar palavra anterior"
  })
end

function Keymaps.setup()
  Keymaps.normal()
  Keymaps.visual()
  Keymaps.insert()
end

Keymaps.setup()

-- Navegação entre janelas no modo normal
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", {
  noremap = true,
  silent = true,
  desc = "Mover entre as janelas em sentido horario"
})

-- neotree keymap
vim.keymap.del("n", "<C-n>")
vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", {
  desc = "Abrir Neo-tree(barra lateral de arquivos)"
})

------------------------- LSP -------------------------
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {
  desc = "Mostrar menu de diagnostico"
})

vim.keymap.set('n', '<leader>ch', vim.lsp.buf.hover, {
  desc = "Mostrar documentação do codigo sob o cursor"
})

vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, {
  desc = "Mostrar documentação do codigo sob o cursor"
})


---------------------  TELESCOPE ----------------------
vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", {
  desc = "Abrir menu de busca de TODOs"
})

vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {
  desc = "Abrir menu de busca de arquivos"
})

vim.keymap.set("n", "<leader>fn", function()
  require("telescope.builtin").find_files {
    cwd = vim.fn.stdpath("config")
  }
end, {
desc = "Abrir menu de busca no diretorio de configuração do Nvim"})

vim.keymap.set("n", "<leader>fr", require("telescope.builtin").registers, {
  desc = "Abrir menu de busca de registros"
})

vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, {
  desc = "Abrir menu de busca de erros"
})

vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, {
  desc = "Abrir menu de busca de atalhos "
})
