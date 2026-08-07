local ls = require("luasnip")

local fmt = require("luasnip.extras.fmt").fmt

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("c", {

  s("main", fmt([[
#include <stdio.h>

int main({}) {{
  {}
}}
]], {i(1), i(0)})
  );

  s("printf", fmt([[
printf("{}");
]], {i(0)}
  ));

  s("scanf", fmt([[
scanf("{}", {});
]], {i(1), i(0)}
  ));

  s("for", fmt([[
for (int i=0; {}; i++) {{
  {}
}}
]], {i(1), i(0)}
  ));

})
