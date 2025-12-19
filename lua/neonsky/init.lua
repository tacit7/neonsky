local config = require("neonsky.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? neonsky.Config
function M.load(opts)
  opts = require("neonsky.config").extend(opts)
  vim.o.background = "dark" -- All variants are dark

  M.styles[vim.o.background] = opts.style
  return require("neonsky.theme").setup(opts)
end

M.setup = config.setup

return M
