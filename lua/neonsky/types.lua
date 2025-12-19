---@class neonsky.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias neonsky.Highlights table<string,neonsky.Highlight|string>

---@alias neonsky.HighlightsFn fun(colors: ColorScheme, opts:neonsky.Config):neonsky.Highlights

---@class neonsky.Cache
---@field groups neonsky.Highlights
---@field inputs table
