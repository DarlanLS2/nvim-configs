return {
  "kylechui/nvim-surround",
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",

  -- keymaps:
  --
  -- Basics-----------------------------------------------------------------
  -- ys | entra no modo add surround
  -- ds | entra no modo delete surround
  -- cs | entra no modo change surround

  -- Inserindo surround caracter--------------------------------------------
  -- ysiw" | example -> "example"
  -- yss"  | entire line -> "entire line"
  -- ysa"( | "example" -> ("example")

  -- Deletando surround caracter--------------------------------------------
  -- > ds" | "example" -> example
  -- > ds( | (example) -> example

  -- Mudando o surround caracter--------------------------------------------
  -- > cs"' | "example" -> 'example'
  -- > cs[{ | [example] -> {example}

  config = function()
    require( "nvim-surround" ).setup({

    })
  end
}
