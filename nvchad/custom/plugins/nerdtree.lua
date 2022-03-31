local mappings = function()
  local map = require("core.utils").map

  map("n", "<F12>", ":NERDTreeToggle <CR>")
end

local M = {}

M.setup = function()
  mappings()
end

return M
