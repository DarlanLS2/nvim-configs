-- Este plugin faz o nvim comentar as coisa da maneria correta para cada tipo 
-- de arquivo
return {
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  }
}
