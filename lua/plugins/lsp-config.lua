return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
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
          "jdtls"
        },
      })
    end
  },
  {
    "mfussenegger/nvim-jdtls",
    dependecies = {
      "mfussenegger/nvim-dap"
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
    end
  }
}
