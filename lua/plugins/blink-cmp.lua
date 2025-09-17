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

      completion = {
        menu = {
          auto_show = false
        },

        documentation = {
          auto_show = true
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
