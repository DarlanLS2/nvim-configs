-- Este plugin é a barra de arquivos lateral
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    opts = {
      default_component_configs = {
        indent = {
          padding = 0,
        }
      },
      window = {
        width = 25,
        mappings = {
          ["j"] = "close_node",
          ["k"] = "move_cursor_up",
          ["l"] = "move_cursor_down",
          ["ç"] = "open",
          ["h"] = "",
          ["J"] = "",
          ["K"] = "",
          ["L"] = "",
          ["<CR>"] = "",
        },
      },
      filesystem = {          -- aqui, fora do window!
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
      },
    },
  }
}
