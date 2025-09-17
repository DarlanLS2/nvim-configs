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

      -- find_files so funciona direito se o arquivo for um repositorio
      vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {
        desc = "Procura por arquivos"
      })

      vim.keymap.set("n", "<leader>fn", function()
        require("telescope.builtin").find_files {
          cwd = vim.fn.stdpath("config")
        }
      end, {
        desc = "Abre o telescope no diretorio de configuração do nvim"
      })

      vim.keymap.set("n", "<leader>fr", require("telescope.builtin").registers, {
        desc = "Abre a lista de registros"
      })

      vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, {
        desc = "Abre a lista de erros"
      })

      vim.keymap.set("n", "<leader>fk", require("telescope.builtin").keymaps, {
        desc = "Abre a lista de atalhos "
      })
    end
  }
}
