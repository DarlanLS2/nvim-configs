return {
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup({
        line_sep_start = '---------------------------------------------------',
        result_padding = '➜ ',
        line_sep = '',
        highlight = {
          headers        = 'Keyword',
          ui             = 'Normal',
          filename       = 'Function',
          filedirectory  = 'Directory',
          search         = 'Search',
          replace        = 'IncSearch',
          border         = 'FloatBorder',
        },
        mapping = {
          ['run_current_replace'] = {
            map = 's',
            cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
            desc = 'replace item',
          },
          ['run_replace'] = {
            map = '<leader>s',
            cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
            desc = 'substituir todos',
          },
          ['close'] = {
            map = '<leader><leader>',
            cmd = "<cmd>lua require('spectre').close()<CR>",
            desc = 'Fechar Spectre',
          },
        }
      })
    end,
    keys = {
      -- Normal mode: buscar palavra sob o cursor
      {
        "<leader>sw",
        '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
        desc = "Buscar palavra sob cursor",
        mode = "n",
      },
      -- Visual mode: buscar seleção
      {
        "<leader>sw",
        '<cmd>lua require("spectre").open_visual()<CR>',
        desc = "Buscar seleção no Spectre",
        mode = "v",
        silent = true,
      },
    }
  }
}

