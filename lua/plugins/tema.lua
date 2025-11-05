return {
  {
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_contrast_dark = "hard"
      vim.g.gruvbox_enable_italic = true
      vim.cmd.colorscheme("monokai-nightasty")

      vim.cmd("highlight Normal guibg=#000000")
      vim.cmd("highlight NormalNC guibg=#020202")
      vim.cmd("highlight @property guifg=#e14832")

      -- Tema alternativo:
      -- vim.cmd("highlight @keyword guifg=#ffcf40")
      -- vim.cmd("highlight @string guifg=#d8ff80")
      -- vim.cmd("highlight @function guifg=#b967ff")
      -- vim.cmd("highlight @function.method guifg=#05ffa1")
      -- vim.cmd("highlight @variable.builtin guifg=#01cdfe")
  end
  }
}
