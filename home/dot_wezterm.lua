-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Color Scheme
config.color_scheme = 'One Half Black (Gogh)'

-- Font
config.font = wezterm.font 'JetBrainsMono Nerd Font'

config.enable_tab_bar = false

config.window_background_opacity = 0.8

-- Mouse bindings
config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    mods = 'CTRL',
    action = act.OpenLinkAtMouseCursor,
  }
}

-- Key bindings for switching between tabs
config.keys = {
  {
    key = "LeftArrow",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = "RightArrow",
    mods = "CTRL|SHIFT",
    action = wezterm.action.ActivateTabRelative(1),
  },
}

-- And finally, return the configuration to wezterm
return config
