-- Este plugin faz o editor reconhecer a estrutura do codigo de maneira melhor,
-- assim ajudando a identificação de cada coisa dentro do codigo
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require('nvim-treesitter.configs').setup {
    --require('nvim-treesitter').setup {
      ensure_installed = {
        "lua",
        "luadoc",
        "python",
        "javascript",
        "json",
        "bash",
        "html",
        "css",
        "java",
        "comment",
        "dockerfile",
        "gitignore",
        "markdown",
        "markdown_inline",
        "powershell",
        "vim",
        "vimdoc",
        "regex",
        "sql"
      },

      auto_install = true,
      highlight = {
        enable = true,        -- ativa o realce de sintaxe
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
