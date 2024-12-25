return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  config = function()
    local transparent = false -- set to true if you would like to enable transparency

    require("nord").set()

    -- Customize Nord colors if needed
    local bg = "#2E3440"
    local bg_dark = "#3B4252"
    local bg_highlight = "#434C5E"
    local bg_visual = "#4C566A"
    local fg = "#ECEFF4"
    local fg_dark = "#D8DEE9"
    local fg_gutter = "#616E88"
    local border = "#88C0D0"

    vim.g.nord_disable_background = transparent and true or false
    vim.g.nord_borders = true
    vim.g.nord_cursorline_transparent = transparent and true or false

    -- Apply the customizations
    vim.cmd("colorscheme nord")
  end,
}
