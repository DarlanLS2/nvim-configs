-- O mason é responsavel por intalar e gerenciar os LSPs

-- Para adicionar uma nova linguagem siga os passos abaixo:
-- Obs: Para verificar as lingagens disponiveis rode "Mason"
-- Obs: Depois de fazer os passos de um "MasonInstall <linguagem>"
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
      ---------------------------------
      -- 1. Adicione a linguagem aqui 
      ---------------------------------
        ensure_installed = {
          "lua_ls",
          "pylsp",
          "ts_ls",
          "html",
          "cssls",
          "phpactor",
          "jdtls",
          "bashls",
          "docker_language_server",
          "docker_compose_language_service",
          "dockerls",
          "vimls",
          "sqlls",
          "clangd"
        },
      })
    end,
  },

  {
    "mfussenegger/nvim-jdtls",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- 🔹 configurações (NOVA API)
      vim.lsp.config.lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      }
      ---------------------------------
      -- 2. Adicione a linguagem aqui 
      ---------------------------------
      vim.lsp.config.tsserver = {}
      vim.lsp.config.html = {}
      vim.lsp.config.cssls = {}
      vim.lsp.config.phpactor = {}
      vim.lsp.config.jdtls = {}
      vim.lsp.config.clangd = {}

      ---------------------------------
      -- 3. Adicione a linguagem aqui 
      ---------------------------------
      vim.lsp.enable({
        "lua_ls",
        "pylsp",
        "ts_ls",
        "html",
        "cssls",
        "phpactor",
        "jdtls",
        "bashls",
        "docker_language_server",
        "docker_compose_language_service",
        "dockerls",
        "vimls",
        "sqlls",
        "clangd",
      })
    end,
  },
}
