-- Para adicionar novos snippets basta criar uma pasta no snippets/ e dar um
-- require aqui juntos aos outros.
return {
	"L3MON4D3/LuaSnip",
	version = "v2.*", 
  build = "make install_jsregexp",

  config = function()
    local ls = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    -- Adicionar os requires aqui:
    require("snippets.c")
  end,
}
