local present, phpactor = pcall(require, "phpactor")

if not present then
   return
end

local M = {}

M.setup = function()
  phpactor.setup{}
end

return M
