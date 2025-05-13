return {
  {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "dark"                      
      vim.g.gruvbox_contrast_dark = "hard"          
      vim.g.gruvbox_enable_italic = true          
      vim.cmd.colorscheme("gruvbox")             
      vim.cmd("highlight Normal guibg=#16181A")
    end
  }
}
