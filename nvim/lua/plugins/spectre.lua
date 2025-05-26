return {
  {
    "nvim-pack/nvim-spectre",
    config = function()
      require("spectre").setup({
        mapping = {
          ['run_current_replace'] = {
            map = '<leader><leader>',
            cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
            desc = 'replace item',
          },
        }
      })
    end,
    keys = {
      { "<leader>sw", '<cmd>lua require("spectre").open_visual()<CR>', desc = "Buscar palavra sob cursor" },
    }
  }
}
