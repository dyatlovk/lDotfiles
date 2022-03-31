return {
  {
    "folke/which-key.nvim",
    config = function()
      require("custom.plugins.whichkey").setup()
    end,
  },

  {
    "scrooloose/nerdtree",
    config = function()
      require("custom.plugins.nerdtree").setup()
    end,
    event = "VimEnter",
  },

  {
    "editorconfig/editorconfig-vim",
    config = function()
      require("custom.plugins.editorconfig").setup()
    end,
    event = "InsertEnter",
  },

  {
    "karb94/neoscroll.nvim",
    opt = true,
    config = function()
      require("neoscroll").setup()
    end,
    setup = function()
      require("core.utils").packer_lazy_load "neoscroll.nvim"
    end,
  },

  {
    "mhinz/vim-startify",
    config = function()
      require("custom.plugins.startify").setup()
    end,
  },

  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu"
  },

  {
    "phpactor/phpactor",
    ft = "php",
    config = function()
      require'lspconfig'.phpactor.setup{}
      -- require 'custom.plugins.phpactor'.setup()
    end
  },

  {
    "junegunn/vim-easy-align",
     requires = {
        'nvim-lua/plenary.nvim'
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    after = "nvim-lspconfig",
    config = function()
      require('custom.plugins.null-ls').setup()
    end,
  },

  {
    "tpope/vim-fugitive",
  },
  
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('custom.plugins.symbols_outline').setup()
    end,
  },

  {
    "sindrets/diffview.nvim",
    requires = {
      'nvim-lua/plenary.nvim'
    },
  },

  {
    "williamboman/nvim-lsp-installer",
    after = "nvim-lspconfig",
    requires = {
      "nvim-lspconfig",
    }
  }
}
