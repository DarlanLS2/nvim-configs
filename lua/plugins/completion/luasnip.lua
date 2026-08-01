return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
  build = "make install_jsregexp",

  config = function()
    local ls = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    ls.add_snippets("c", {
      s("main", {
        t({"After expanding, the cursor is here ->"}), i(1),
        t({"", "After jumping forward once, cursor is here ->"}), i(2),
        t({"", "After jumping once more, the snippet is exited there ->"}), i(0),
      }),
    })

  end,
}
