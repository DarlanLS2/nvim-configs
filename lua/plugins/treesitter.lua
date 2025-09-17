return {
  -- TODO: vai se foder
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require('nvim-treesitter.configs').setup {

      -- Linguagens que você quer que instale automaticamente
      ensure_installed = {
        "lua",
        "python",
        "javascript",
        "bash",
        "html",
        "css"
      },

      -- Instala os parsers automaticamente ao abrir arquivo
      auto_install = true,

      highlight = {
        enable = true,        -- ativa o realce de sintaxe
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
