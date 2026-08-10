---@diagnostic disable: unused-local
-- Este plugin é o que faz aparecer esta barra com varias informações na parte 
-- de baixo
return {
  'nvim-lualine/lualine.nvim',

  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()

    -- Muda cores -----------------------------------------------------------
    local theme = require('lualine.themes.auto')

    theme.normal.a.bg = '#ff9700'
    theme.normal.b.bg = '#0A0A0A'
    theme.normal.c.bg = '#0A0A0A'

    theme.insert.a.bg = '#62d8f1'
    theme.insert.b.bg = '#0A0A0A'

    theme.visual.a.bg = '#fc1a70'
    theme.visual.b.bg = '#0A0A0A'

    theme.command.a.bg = '#0087ff'
    theme.command.a.fg = '#000001'
    theme.command.b.bg = '#0A0A0A'

    -- Muda components ------------------------------------------------------
    local c_filetype = {
      'filetype',
      padding = { left = 1, right = 0 },
      icon_only = true,
      color = { fg = '#ffffff' }
    }

    local c_filename = {
      'filename',
      color = { fg = '#ffffff' },
      padding = { left = 0, right = 1 },
    }

    local c_diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      always_visible = true,
      symbols = { error = ' ', warn = ' ', info = '󰬐 ', hint = '󱍄 ' },
      diagnostics_color = {
        error = { fg = "#fc1a70"},
        info = { fg = "#0087ff" },
      },
    }

    local c_progress = {
      'progress',
      color = { fg = '#ffffff'}
    }

    -- Componente que aparece quando esta gravando um macro
    local function macro_recording()
      local reg = vim.fn.reg_recording()

      if reg ~= "" then
        return " " .. reg
      end

      return ""
    end

    -- Config --------------------------------------------------------------
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = theme, -- Tema "auto" com minhas modificações
        component_separators = { left = '', right = '' },
        section_separators = { left = ' ', right = ' ' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        always_divide_middle = true,
        globalstatus = true,
      },

      -- Sections são os espaços na linha [ a | b | c            x | y | z ]
      sections = {
        lualine_a = { { 'mode', right_padding = 2 } },
        lualine_b = { c_filetype, c_filename, c_diagnostics },
        lualine_c = { 'diff' },
        lualine_x = {},
        lualine_y = { macro_recording, c_progress },
        lualine_z = { { 'location', left_padding = 2 } } },
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
    end
  }
