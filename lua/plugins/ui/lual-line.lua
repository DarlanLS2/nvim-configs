-- Este plugin é o que faz aparecer esta barra com varias informações na parte 
-- de baixo
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local function diagnostc()
      return {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ' },
        diagnostics_color = {
          error = { fg = "#ec5f67"},
          warn = { fg = "#ECBE7B" },
          info = { fg = "#008080" },
        },
      }
    end
    local setup = require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto', -- pode trocar por 'gruvbox', 'dracula', 'catppuccin', etc.
        component_separators = { left = '│', right = '│' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filetype', 'filename', diagnostics},
        lualine_c = { 'diff', 'diagnostics' },
        lualine_y = { 'progress' },
        lualine_z = { { 'location', separator = { right = '' }, left_padding = 2 } }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { 'nvim-tree', 'lazy', 'quickfix' }
    }

    table.insert(setup.sections.lualine_b, {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      symbols = { error = ' ', warn = ' ', info = ' ' },
      diagnostics_color = {
        error = { fg = "#ec5f67"},
        warn = { fg = "#ECBE7B" },
        info = { fg = "#008080" },
      },
    })
  end
}
