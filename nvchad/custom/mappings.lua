local map = require("core.utils").map
require("core.mappings").lspconfig()
--
map("n", "<F10>", ":qa <CR>")
map("n", "<leader>o", ":SymbolsOutline <CR>")
