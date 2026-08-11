-- Este plugin oferece um ui para buscas coisas, como arquivos, diagnosticos,
-- registros, ETC.
return {
  {
    'nvim-telescope/telescope.nvim',

    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },

    config = function()
      require('telescope').setup{
        defaults = {
          mappings = {
            i = {
              ["<C-l>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous"
            }
          },

          borderchars = {
            "─", "│", "─", "│",
            "┌", "┐", "┘", "└",
          },

          -- Personaliza a janela do telescope
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              width = 0.70,
              height = 0.99,
              preview_width = 0.62,
            },
          },
          sorting_strategy = "ascending",
        }
      }

      -- Group principal
      vim.api.nvim_set_hl(0, "TelescopeNormal", {
        bg = "#0A0A0A",
        fg = "#FFFFFF",
      })

      -- Group bordas
      vim.api.nvim_set_hl(0, "TelescopeBorder", {
        bg = "#0A0A0A",
        fg = "#ff9700",
        -- fg = "#a4e400", -- Segunda opção de cor
      })
    end
  }
}
