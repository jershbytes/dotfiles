return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "monokai-pro", -- auto-detects if available
        section_separators = "",
        component_separators = "",
      },
    })
  end,
}

