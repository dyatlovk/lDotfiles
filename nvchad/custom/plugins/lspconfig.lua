local M = {}

M.setup_lsp = function(attach, capabilities)   
  local lspconfig = require "lspconfig"
  local clangd = require lspconfig.clangd.setup{
      on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
      end,
   }
  local cmake = require lspconfig.cmake.setup{}
  local phpactor = require lspconfig.phpactor.setup{}
end

return M
