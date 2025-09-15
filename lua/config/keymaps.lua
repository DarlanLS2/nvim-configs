local Keymaps = {}

function Keymaps.normal()
  vim.keymap.set("n", "j", "h", {
    noremap = true,
    silent = true,
    desc = "Mover para a esquerda (normal)"
  })

  vim.keymap.set("n", "l", "j", {
    noremap = true,
    silent = true,
    desc = "Mover para baixo (normal)"
  })

  vim.keymap.set("n", "ç", "l", {
    noremap = true,
    silent = true,
    desc = "Mover para a direita (normal)"
  })

  vim.keymap.set("n", "Ç", "$", {
    noremap = true,
    silent = true,
    desc = "Ir para o fim da linha (Ç)"
  })

  vim.keymap.set("n", "J", "^", {
    noremap = true,
    silent = true,
    desc = "Ir para o inicio da linha"
  })

  vim.keymap.set("n", "w", "b", {
    noremap = true,
    silent = true,
    desc = "Mover para o inicio da palavra anterior"
  })

  vim.keymap.set("n", "<leader>y", '"+y', {
    noremap = true,
    silent = true,
    desc = "Copia para area de transferencia"
  })

  vim.keymap.set("n", "<leader>p", '"+p', {
    noremap = true,
    silent = true,
    desc = "Cola a ultima coisa da area de tranferencia"
  })

  vim.keymap.set("n", "2o", "o<Esc>o", {
    noremap = true,
    silent = true,
    desc = "Pula para baixo 2 linhas e entre no modo inserção"
  })

  vim.keymap.set("n", "2O", "O<Esc>O", {
    noremap = true,
    silent = true,
    desc = "Pula para cima 2 linhas e entre no modo inserção"
  })

  vim.keymap.set("n", "dç", 'd$', {
    noremap = true,
    silent = true,
    desc = "Deleta do caractere atual até o fim da linha"
  })

  vim.keymap.set("n", "dj", 'd0', {
    noremap = true,
    silent = true,
    desc = "Deleta do caractere atual até o inicio da linha"
  })

  vim.keymap.set("n", "<C-a>", 'ggVG', {
    noremap = true,
    silent = true,
    desc = "Seleciona tudo"
  })

  vim.keymap.set("n", "dl", '(V)d', {
    noremap = true,
    silent = true,
    desc = "Deleta bloco de codigo atual"
  })

  vim.keymap.set("n", "cc", 'yyp', {
    noremap = true,
    silent = true,
    desc = "Duplica linha"
  })

  vim.keymap.set("n", "<leader>a", '==', {
    noremap = true,
    silent = true,
    desc = "Arruma automaticamente a indentação da linha"
  })

  vim.keymap.set("n", ";;", 'gcc', {
    noremap = true,
    silent = true,
    desc = "Comenta linha atual"
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
end

function Keymaps.visual()
  -- Mapeamentos no modo visual
  vim.keymap.set("v", "j", "h", {
    noremap = true,
    silent = true,
    desc = "Mover para a esquerda (visual)"
  })

  vim.keymap.set("v", "l", "j", {
    noremap = true,
    silent = true,
    desc = "Mover para baixo (visual)"
  })

  vim.keymap.set("v", "ç", "l", {
    noremap = true,
    silent = true,
    desc = "Mover para a direita (visual)"
  })

  vim.keymap.set("v", "Ç", "$", {
    noremap = true,
    silent = true,
    desc = "Ir para o fim da linha (Ç)"
  })

  vim.keymap.set("v", "J", "^", {
    noremap = true,
    silent = true,
    desc = "Ir para o inicio da linha"
  })

  vim.keymap.set("v", "w", "b", {
    noremap = true,
    silent = true,
    desc = "Mover para o inicio da palavra anterior"
  })

  vim.keymap.set("v", "<leader>y", '"+y', {
    noremap = true,
    silent = true,
    desc = "Copia para area de transferencia"
  })

  vim.keymap.set("v", "<leader>p", '"+p', {
    noremap = true,
    silent = true,
    desc = "Cola a ultima coisa da area de tranferencia"
  })

  vim.keymap.set("v", "cc", 'yP', {
    noremap = true,
    silent = true,
    desc = "Duplica a seleção"
  })

  vim.keymap.set("v", "<leader>a", '==', {
    noremap = true,
    silent = true,
    desc = "Arruma a indentação da seleção"
  })

  vim.keymap.set("v", ";;", 'gcc', {
    noremap = true,
    silent = true,
    desc = "Comenta a seleção"
  })
end

function Keymaps.setup()
  Keymaps.normal()
  Keymaps.visual()
end

Keymaps.setup()

-- Navegação entre janelas no modo normal
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", {
  noremap = true,
  silent = true,
  desc = "Move entre as janelas em sentido horario"
})

-- lsp keys
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, {
  desc = "Mostrar diagnostic flutuante"
})

-- neotree keymap
vim.keymap.del("n", "<C-n>") -- deleta a tecla padrao

vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", {
  desc = "Toggle Neo-tree"
})
