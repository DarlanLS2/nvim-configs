-- O mason é responsavel por intalar e gerenciar os LSPs
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
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "phpactor",
          "jdtls",
          "bashls",
          "docker_language_server",
          "docker_compose_language_service"
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
      vim.lsp.config.lua_ls = {}
      vim.lsp.config.tsserver = {}
      vim.lsp.config.html = {}
      vim.lsp.config.cssls = {}
      vim.lsp.config.phpactor = {}
      vim.lsp.config.jdtls = {}

      -- 🔹 ativação explícita
      vim.lsp.enable({
        "lua_ls",
        "tsserver",
        "html",
        "cssls",
        "phpactor",
        "jdtls",
      })
    end,
  },
}
