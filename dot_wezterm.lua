local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font Settings
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

-- Theme
config.color_scheme = "ayu"
    --config.color_scheme = "Catppuccin Mocha"

-- Window Management
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0, 
    right = 0, 
    bottom = 0
}
    -- config.window_decorations = "RESIZE"

return config