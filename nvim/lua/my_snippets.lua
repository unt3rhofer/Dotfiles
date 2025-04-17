local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

-- Custom C++ snippet
ls.add_snippets("cpp", {
  s("template", {
    t({
      "#include <iostream>",
      "using namespace std;",
      "",
      "int main(void) {",
      "",
	  "",
      "",
      "    return 0;",
      "}",
    }),
  }),
})
