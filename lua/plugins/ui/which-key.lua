return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    keys = {
      scroll_down = "<c-k>",
      scroll_up = "<c-l>"
    },
    spec = {
      { "<leader>f", group = " Telescope", icon = "󰍉"  },
      { "<leader>l", group = " LSP", icon = "󰁨"  },
    },
    icons = {
      group = "…",
    },
    win = {
      title = false,
      padding = {1, 1},

    },
    show_help = false,
  },
  config = function(_, opts)
    require("which-key").setup(opts)

    vim.api.nvim_set_hl(0, "WhichKeyNormal", {
      bg = "#0A0A0A",
      fg = "#ffffff",
    })

    vim.api.nvim_set_hl(0, "WhichKeyBorder", {
      bg = "#0A0A0A",
      fg = "#a4e400",
    })
  end,

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "MOSTRA TODAS AS OPÇÕES DE KEYSMAPS",
    },
  },
}
