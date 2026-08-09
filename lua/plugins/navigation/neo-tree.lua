-- Repository: https://github.com/nvim-neo-tree/neo-tree.nvim
-- Default config: https://github.com/nvim-neo-tree/neo-tree.nvim/blob/main/lua/neo-tree/defaults.luao

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
        modified = {
          symbol = "✎ ",
        },
        git_status = {
          symbols = {
            modified = "⚒",
            unstaged  = "⛶",
          }
        },
        indent = {
          padding = 0,
        },
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

    config = function(_, opts)
      require("neo-tree").setup(opts)

      -- Group do background
      vim.api.nvim_set_hl(0, "NeoTreeNormal", {
        bg = "#0a0a0a",
      })

      -- Group da linha selecionada
      vim.api.nvim_set_hl(0, "NeoTreeCursorLine", {
        bg = "#262626",
      })

      -- Group do separador de janela
      vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", {
        fg = "#0a0a0a",
      })

      -- Group dos icons de indentação
      vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", {
        fg = "#ff9700",
      })
    end
  }
}
