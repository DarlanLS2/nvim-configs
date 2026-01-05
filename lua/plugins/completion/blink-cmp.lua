-- Esta plugin é o responsavel pelo autocomplete, ele oferece uma ui com opções
-- de autocomplete. Ele usa os LSPs
return {
  {
    'saghen/blink.cmp',

    dependencies = {
      'rafamadriz/friendly-snippets'
    },

    version = '1.*',

    opts = {
      keymap = {
        preset = 'enter',
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-l>'] = { 'select_next', 'fallback' },
        ['<C-o>'] = { 'show_documentation'},
        ['<C-i>'] = { 'hide_documentation'},
      },

      appearance = {
        nerd_font_variant = 'mono',
      },

      -- Mermão mo trampo mexer aqui em...
      completion = {
        menu = {
          auto_show = false,
          min_width = 10,
          winblend = 15,
          window = {
            offset = {
              x = -10,
              y = 0,
            },
          },

          draw = {
            components = {
              label = {
                width = { fill = false, max = 15 }
              }
            },
            columns = {
              { 'kind_icon' },
              { 'label' }
            },
          },
        },

        documentation = {
          auto_show = true,

          window = {
            winblend = 20,
            desired_min_width = 30,
            min_width = 10,
            max_width = 40,
            max_height = 80,

            direction_priority = {
              menu_north = { 'e', 'w', 'n', 's' },
              menu_south = { 'e', 'w', 's', 'n' },
            },
          }
        },

        ghost_text = {
          enabled = true,
          show_with_selection = true,
          show_without_selection = false,
          show_with_menu = false,
          show_without_menu = true,
        },
      },

      signature = {
        enabled = true
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning" 
      }
    },

    opts_extend = {
      "sources.default"
    }
  }
}
