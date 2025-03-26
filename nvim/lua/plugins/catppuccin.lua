return {
    {
      "catppuccin/nvim",
      lazy = false,
      name = "catppuccin",
      priority = 1000,
      config = function()
        integrations = {
            lualine = true,
        },
        vim.cmd.colorscheme "catppuccin-mocha"
      end
    }
  }
