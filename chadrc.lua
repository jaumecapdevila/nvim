---@type ChadrcConfig
local M = {}

local highlights = require("custom.highlights")

M.ui = {
  theme = "onedark",
  -- transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "vscode",
  },

  tabufline = {
    show_numbers = true,
  },
}

M.plugins = "custom.plugins" -- path for lazy.nvim

M.mappings = require("custom.mappings")

return M
