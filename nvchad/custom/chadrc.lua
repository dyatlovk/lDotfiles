-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

vim.wo.wrap = false

M.ui = {
  theme = "onedark",
}

M.options = {
  timeoutlen = 300,
}

local userPlugins = require "custom.plugins"

M.plugins = {
  install = userPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
    statusline = {
      style = "block"
    },
   nvChad = {
   }
  },
  default_plugin_config_replace = {
    bufferline = {
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        mode = "buffers",
        diagnostics = "nvim_lsp"
      }
    },
    nvim_treesitter = {
      incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    }
  }
}

return M
