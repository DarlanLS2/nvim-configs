-- Esta plugin é o responsavel pelo autocomplete, ele oferece uma ui com opções
-- de autocomplete. Ele usa os LSPs.

return {
  {
    'saghen/blink.cmp',

    version = '1.*',

    dependencies = {
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },

    opts = {

      -- Habilita o uso do luasnip
      snippets = { preset = 'luasnip' },

      -- Recursos que serão usados para a lista de autocomplete
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },

        -- Ordem de prioridade na lista de autocomplete
        providers = {
          snippets = {
            score_offset = 100,
          },

          lsp = {
            score_offset = 0,
          },
        },
      },

      keymap = {
        preset = 'default',
        ["<Tab>"] = {
          "select_and_accept",
          "snippet_forward",
          "fallback",
        },
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

      fuzzy = {
        implementation = "prefer_rust_with_warning" 
      }
    },

    opts_extend = {
      "sources.default"
    }
  }
}
