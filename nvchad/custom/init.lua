require "custom.mappings"

vim.notify("init.lua")

local projectDir = vim.loop.cwd()
if vim.fn.filereadable(projectDir .. "/.vim/init.lua") == 1 then
   local ok, err = pcall(require, projectDir)
   if not ok then
      vim.notify("Error loading viminit.lua\n\n" .. err)
   end
   return
end
