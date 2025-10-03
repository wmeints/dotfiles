local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Explicitly start the shell
-- config.default_prog = { "/bin/zsh" }

-- Color scheme
config.color_scheme = "Catppuccin Mocha"

-- Initial window size
config.initial_cols = 120
config.initial_rows = 28

-- Font settings
config.font = wezterm.font("MonaspiceAR NF")
config.font_size = 15

-- Custom keybindings

local action = wezterm.action

config.keys = {
	{
		key = "mapped:_",
		mods = "SHIFT|ALT",
		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "mapped:+",
		mods = "SHIFT|ALT",
		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

return config
