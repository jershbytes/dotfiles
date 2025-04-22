return {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
  
      -- Example: setup for Lua (you can add others later)
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            },
          },
        },
      })
    end,
    dependencies = {
      -- Optional, for nice status messages
      { "hrsh7th/cmp-nvim-lsp" },
      { "williamboman/mason.nvim", config = true },
      { "williamboman/mason-lspconfig.nvim", config = true },
    },
  }
  