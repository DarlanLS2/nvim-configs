return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim'},
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      local builtin = require('telescope.builtin')

      require('telescope').setup {
        extension = {
          fzf = {}
        },
        require('telescope').load_extension('fzf'),
        defaults = {
          mappings = {
            i = {
              ["<C-l>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
            n = {
              ["l"] = "move_selection_next",
              ["k"] = "move_selection_previous",
            },
          },
        }
      }

      vim.keymap.set('n', '<leader>ff', builtin.find_files)
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics)
      vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols)
      vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    end
  }
}
