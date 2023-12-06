---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "solarized_dark",
  theme_toggle = { "solarized_dark", "ayu_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  -- My solarized_dark theme preference
  changed_themes = {
    solarized_dark = {
      base_16 = {
        base00 = "#002b36",
        base01 = "#06313c",
        base02 = "#0a3540",
        base03 = "#133e49",
        base04 = "#1b4651",
        base05 = "#93a1a1",
        base06 = "#eee8d5",
        base07 = "#fdf6e3",
        -- base08 = "#dc322f",
        base08 = "#268bd2",
        base09 = "#cb4b16",
        base0A = "#b58900",
        base0B = "#859900",
        -- base0C = "#2aa198",
        base0C = "#b58900",
        base0D = "#268bd2",
        base0E = "#859900",
        base0F = "#d33682",
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
