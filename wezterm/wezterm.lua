local wezterm = require 'wezterm'

local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local config = wezterm.config_builder()

if get_appearance():find 'Dark' then
  config.color_scheme = 'Catppuccin Mocha'
else
  config.color_scheme = 'Catppuccin Latte'
end

config.window_background_opacity = 0.70
config.win32_system_backdrop = "Disable"

config.tab_bar_at_bottom = true

config.font = wezterm.font {
  family = 'JetBrains Mono',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.font_size = 14
config.warn_about_missing_glyphs = false

    
return config
