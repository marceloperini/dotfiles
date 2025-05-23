-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tomorrow Night Bright"

config.window_padding = {
	left = 4,
	right = 4,
	top = 0,
	bottom = 0,
}

config.font = wezterm.font({
	family = "Inconsolata Nerd Font Mono",
	weight = "Bold",
	harfbuzz_features = { "calt=1", "clig=0", "liga=0" },
})

config.font_size = 20.0

config.hide_tab_bar_if_only_one_tab = true
config.send_composed_key_when_left_alt_is_pressed = true

config.keys = {
	{ mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) },
}

-- and finally, return the configuration to wezterm
return config
