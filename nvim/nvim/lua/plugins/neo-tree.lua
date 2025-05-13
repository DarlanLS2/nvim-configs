return {
  {
    "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },
      lazy = false, -- neo-tree will lazily load itself
      opts = {
        window = {
          width = 30,
        mappings = {
          ["j"] = "close_node",        -- esquerda
          ["k"] = "move_cursor_up",    -- cima
          ["l"] = "move_cursor_down",  -- baixo
          ["ç"] = "open",              -- direita (abrir)
          -- Desativando os padrões pra evitar conflito
          ["h"] = "",
          ["J"] = "",
          ["K"] = "",
          ["L"] = "",
          ["<CR>"] = "",
        },
      },
    },
  }
}
