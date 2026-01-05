-- Este plugin oferece um ui para buscas coisas, como arquivos, diagnosticos,
-- registros, ETC.
return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

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

          -- Personaliza a janela do telescope
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              width = { padding = 0 },
              height = { padding = 0 },
              preview_width = 0.5,
            },
          },
          sorting_strategy = "ascending",

        }
      }
    end
  }
}
