local wezterm = require("wezterm")
local themes = wezterm.color.get_builtin_schemes()
config = wezterm.config_builder()

config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_tab_bar = false
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14.0
config.initial_rows = 36 + 0
config.initial_cols = 80 + 20
config.window_background_opacity = 0.9
config.macos_window_background_blur = 25
config.max_fps = 120

---- System Color Scheme
-- function get_appearance()
--   if wezterm.gui then
--     return wezterm.gui.get_appearance()
--   end
--   return 'Dark'
-- end
--
-- function scheme_for_appearance(appearance)
--   if appearance:find 'Dark' then
--     return 'Builtin Solarized Dark'
--   else
--     return 'Builtin Solarized Light'
--   end
-- end
--
-- config.color_scheme = scheme_for_appearance(get_appearance())

-- ColorScheme
local color_scheme = 'Atelier Heath (base16)'
local color_scheme = 'Cloud (terminal.sexy)'
local color_scheme = 'rose-pine'
local theme = themes[color_scheme]
theme.background = 'black'
config.color_schemes = { ['theme'] = theme }
config.color_scheme = 'theme'

borderColor = "2e2e2e"
config.window_frame = {
  border_left_width = '0.2cell',
  border_right_width = '0.2cell',
  border_bottom_height = '0.1cell',
  border_top_height = '0.1cell',
  border_left_color = borderColor,
  border_right_color = borderColor,
  border_bottom_color = borderColor,
  border_top_color = borderColor,
}

config.window_padding = {
  top = 16 * 4,
}

config.keys = {
  -- Custom keybindings
  -- Zoom in (increase font size)
  {
    key = '+',
    mods = 'CMD',
    action = wezterm.action.IncreaseFontSize,
  },
  -- Zoom out (decrease font size)
  {
    key = '-',
    mods = 'CMD',
    action = wezterm.action.DecreaseFontSize,
  },
  -- Reset zoom (reset font size)
  {
    key = '0',
    mods = 'CMD',
    action = wezterm.action.ResetFontSize,
  },
}

return config
