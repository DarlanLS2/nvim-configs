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
      vim.cmd("highlight Normal guibg=#0f0f0f")
      vim.cmd("highlight NormalNC guibg=#0f0f0f")
  end
  }
}
