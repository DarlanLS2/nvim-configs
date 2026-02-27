return {
  "kylechui/nvim-surround",
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",

  -- keymaps interessantes:
  -- ys -> entra no modo add surround
  -- ds -> entra no modo delete surround
  -- cs -> entra no modo change surround
  --
  -- ysiw" -> Coloca "" em volta da palavra sobre o cursor
  -- ds" -> Delete ""
  -- cs"' -> Troca "" por ''

  config = function()
    require("nvim-surround").setup({

    })
  end
}
