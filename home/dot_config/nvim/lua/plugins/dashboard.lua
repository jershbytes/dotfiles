return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
  
      dashboard.section.header.val = {
        [[       __   _______ .______          _______. __    __  ____    ____  __  .___  ___. ]],
        [[      |  | |   ____||   _  \        /       ||  |  |  | \   \  /   / |  | |   \/   | ]],
        [[      |  | |  |__   |  |_)  |      |   (----`|  |__|  |  \   \/   /  |  | |  \  /  | ]],
        [[.--.  |  | |   __|  |      /        \   \    |   __   |   \      /   |  | |  |\/|  | ]],
        [[|  `--'  | |  |____ |  |\  \----.----)   |   |  |  |  |    \    /    |  | |  |  |  | ]],
        [[ \______/  |_______|| _| `._____|_______/    |__|  |__|     \__/     |__| |__|  |__| ]],
      }
  
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
        dashboard.button("q", "󰿅  Quit", ":qa<CR>"),
      }
  
      dashboard.section.footer.val = {
        "",
        "⚡ Happy hacking with JershVim",
      }
  
      alpha.setup(dashboard.config)
    end,
  }
  