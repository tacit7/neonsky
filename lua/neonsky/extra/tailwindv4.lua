local util = require("neonsky.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-neonsky-${_style}-bg: oklch(from ${bg} l c h);
  --color-neonsky-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-neonsky-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-neonsky-${_style}-bg-float: var(--color-neonsky-${_style}-bg-dark);
  --color-neonsky-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-neonsky-${_style}-bg-popup: var(--color-neonsky-${_style}-bg-dark);
  --color-neonsky-${_style}-bg-search: var(--color-neonsky-${_style}-blue0);
  --color-neonsky-${_style}-bg-sidebar: var(--color-neonsky-${_style}-bg-dark);
  --color-neonsky-${_style}-bg-statusline: var(--color-neonsky-${_style}-bg-dark);
  --color-neonsky-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-neonsky-${_style}-black: oklch(from ${black} l c h);
  --color-neonsky-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-neonsky-${_style}-blue: oklch(from ${blue} l c h);
  --color-neonsky-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-neonsky-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-neonsky-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-neonsky-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-neonsky-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-neonsky-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-neonsky-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-neonsky-${_style}-border: var(--color-neonsky-${_style}-black);
  --color-neonsky-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-neonsky-${_style}-comment: oklch(from ${comment} l c h);
  --color-neonsky-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-neonsky-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-neonsky-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-neonsky-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-neonsky-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-neonsky-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-neonsky-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-neonsky-${_style}-diff-text: var(--color-neonsky-${_style}-blue7);
  --color-neonsky-${_style}-error: var(--color-neonsky-${_style}-red1);
  --color-neonsky-${_style}-fg: oklch(from ${fg} l c h);
  --color-neonsky-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-neonsky-${_style}-fg-float: var(--color-neonsky-${_style}-fg);
  --color-neonsky-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-neonsky-${_style}-fg-sidebar: var(--color-neonsky-${_style}-fg-dark);
  --color-neonsky-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-neonsky-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-neonsky-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-neonsky-${_style}-git-ignore: var(--color-neonsky-${_style}-dark3);
  --color-neonsky-${_style}-green: oklch(from ${green} l c h);
  --color-neonsky-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-neonsky-${_style}-green1: oklch(from ${green1} l c h);
  --color-neonsky-${_style}-green2: oklch(from ${green2} l c h);
  --color-neonsky-${_style}-hint: var(--color-neonsky-${_style}-teal);
  --color-neonsky-${_style}-info: var(--color-neonsky-${_style}-blue2);
  --color-neonsky-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-neonsky-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-neonsky-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-neonsky-${_style}-orange: oklch(from ${orange} l c h);
  --color-neonsky-${_style}-purple: oklch(from ${purple} l c h);
  --color-neonsky-${_style}-rainbow1: var(--color-neonsky-${_style}-blue);
  --color-neonsky-${_style}-rainbow2: var(--color-neonsky-${_style}-yellow);
  --color-neonsky-${_style}-rainbow3: var(--color-neonsky-${_style}-green);
  --color-neonsky-${_style}-rainbow4: var(--color-neonsky-${_style}-teal);
  --color-neonsky-${_style}-rainbow5: var(--color-neonsky-${_style}-magenta);
  --color-neonsky-${_style}-rainbow6: var(--color-neonsky-${_style}-purple);
  --color-neonsky-${_style}-rainbow7: var(--color-neonsky-${_style}-orange);
  --color-neonsky-${_style}-rainbow8: var(--color-neonsky-${_style}-red);
  --color-neonsky-${_style}-red: oklch(from ${red} l c h);
  --color-neonsky-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-neonsky-${_style}-red1: oklch(from ${red1} l c h);
  --color-neonsky-${_style}-teal: oklch(from ${teal} l c h);
  --color-neonsky-${_style}-todo: var(--color-neonsky-${_style}-blue);
  --color-neonsky-${_style}-warning: var(--color-neonsky-${_style}-yellow);
  --color-neonsky-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-neonsky-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
