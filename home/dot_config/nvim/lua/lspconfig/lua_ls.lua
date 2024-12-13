lspconfig.lua_ls.setup {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME,
            '~/.local/share/nvim/lazy/dracula',
          },
        },
        hint = {
          enable = true,
        },
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
    capabilities = capabilities,
  }