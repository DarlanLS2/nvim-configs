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

  vim.keymap.set("n", "<C-j>", "b", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o inicio da palavra anterio"
  })

  vim.keymap.set("n", "<C-ç>", "e", {
    noremap = true,
    silent = true,
    desc = "Mover cursor para o fim da proxima palavra"
  })

  vim.keymap.set("n", "<leader><Tab>", "<C-w>w", {
    noremap = true,
    silent = true,
    desc = "Mover entre as janelas em sentido horario"
  })

  vim.keymap.set("n", "K", "{", {
    noremap = true,
    silent = true,
    desc = "Mover para o início do bloco"
  })

  vim.keymap.set("n", "L", "}", {
    noremap = true,
    silent = true,
    desc = "Mover para o fim do bloco"
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
    desc = "Apagar bloco de codigo sob o cursor"
  })

  vim.keymap.set("n", "cc", 'yyp', {
    noremap = true,
    silent = true,
    desc = "Duplicar linha sob o cursor"
  })

  vim.keymap.set("n", "<leader>al", '==', {
    noremap = true,
    silent = true,
    desc = "Arrumar indentação da linha sob o cursor"
  })

  vim.keymap.set("n", "<leader>ak", '=ap', {
    noremap = true,
    silent = true,
    desc = "Arrumar indentação do paragrafo sob o cursor"
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

  vim.keymap.set("n", "<leader><leader>", "o<Esc>k", {
    silent = true,
    desc = "Criar linha abaixo do cursor"
  })

  vim.keymap.set("n", "m", "'", {
    silent = true,
    desc = "Ir a mark"
  })

  vim.keymap.set("n", "<leader>m", "m", {
    silent = true,
    desc = "Criar mark"
  })

  vim.keymap.set("n", "q", "@", {
    silent = true,
    desc = "Rodar macro"
  })

  vim.keymap.set("n", "<leader>q", "q", {
    silent = true,
    desc = "Criar macro"
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
  vim.keymap.set("i", "<C-j>", "<BS>", {
    noremap = true,
    silent = true,
    desc = "Apagar letra anterior"
  })

  vim.keymap.set("i", "<C-k>", "<C-w>", {
    noremap = true,
    silent = true,
    desc = "Apagar palavra anterior"
  })
end

function Keymaps.telescope()
  vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", {
    desc = "Buscar TODOs"
  })

  vim.keymap.set("n", "<leader>fm", "<cmd>Telescope notify<CR>", {
    desc = "Buscar Mensagens do Notify"
  })

  vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {
    desc = "Buscar Arquivos"
  })

  vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, {
    desc = "Buscar Help tags"
  })

  vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, {
    desc = "Buscar Diagnostics"
  })

  vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, {
    desc = "Buscar Keymaps"
  })

  vim.keymap.set("n", "<leader>fs", require("telescope.builtin").lsp_document_symbols, {
    desc = "Buscar Symbols"
  })

  vim.keymap.set("n", "<leader>fc", require("telescope.builtin").current_buffer_fuzzy_find, {
    desc = "Buscar Padrão no atual Arquivo"
  })

  vim.keymap.set("n", "<leader>fg", function()
    require("telescope.builtin").live_grep {
      cwd = require("telescope.utils").buffer_dir()
    }
  end, {
    desc = "Buscar Padrões no atual Projeto"
  })

  vim.keymap.set("n", "<leader>fn", function()
    require("telescope.builtin").find_files {
      cwd = vim.fn.stdpath("config")
    }
  end, {
  desc = "Buscar Arquivos de configuração do Nvim"})
end

function Keymaps.neoTree()
  vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<CR>", {
    desc = "Abrir Neo-tree(barra lateral de arquivos)"
  })
end

function Keymaps.lsp()
  vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, {
    desc = "Exibir diagnostico"
  })

  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.hover, {
    desc = "Exibir documentação"
  })

  vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, {
    desc = "Exibir ações de codigo"
  })

  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, {
    desc = "Renomear symbol"
  })
end

function Keymaps.setup()
  Keymaps.normal()
  Keymaps.visual()
  Keymaps.insert()
  Keymaps.telescope()
  Keymaps.neoTree()
  Keymaps.lsp()
end

Keymaps.setup()
