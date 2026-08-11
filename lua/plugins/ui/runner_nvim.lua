-- original repository: https://github.com/TheLazyCat00/runner-nvim
-- my forked: https://github.com/DarlanLS2/runner-nvim
-- usage: 
--  <leader>o = Digitar um comando;
--  <leader>r = Roda o ultimo comando
--  <leader>t = Abre a janela do terminal
--  q = Fecha o popup do terminal

return {
  "DarlanLS2/runner-nvim",

  -- Uncomment this for local development:
  -- dir = "~/Desktop/runner-nvim",
  -- name = "runner-nvim",

  opts = {}, -- This is required to call setup()
  keys = {
    { "<leader>r", function () require("runner-nvim").runLast() end, desc = "Run last cmd" },
    { "<leader>o", function () require("runner-nvim").run() end, desc = "Run cmd" },
    { "<leader>t", function () require("runner-nvim").toggle() end, desc = "Toggle terminal"},
  }
}
