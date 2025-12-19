local M = {}

---@param opts? neonsky.Config
function M.setup(opts)
  opts = require("neonsky.config").extend(opts)

  -- Load the selected variant
  local palette = require("neonsky.colors." .. opts.style)

  ---@class ColorScheme: Palette
  local colors = vim.deepcopy(palette)

  colors.none = "NONE"

  -- Derived colors for compatibility
  colors.diff = {
    add = colors.green_200,
    delete = colors.red_200,
    change = colors.yellow_200,
    text = colors.blue_200,
  }

  colors.git = {
    add = colors.green_300,
    change = colors.yellow_300,
    delete = colors.red_300,
    ignore = colors.muted,
  }

  colors.black = colors.muted
  colors.border = colors.gutter
  colors.border_highlight = colors.cyan_300

  colors.bg_popup = colors.muted
  colors.bg_statusline = colors.muted
  colors.bg_sidebar = colors.bg
  colors.bg_float = colors.bg
  colors.bg_visual = colors.visual_bg
  colors.bg_search = colors.yellow_300
  colors.fg_sidebar = colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red_300
  colors.warning = colors.yellow_300
  colors.info = colors.blue_300
  colors.hint = colors.cyan_300
  colors.todo = colors.magenta_300

  opts.on_colors(colors)

  return colors, opts
end

return M
