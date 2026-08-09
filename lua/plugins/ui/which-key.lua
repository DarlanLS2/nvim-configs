return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
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
    }
  },
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
