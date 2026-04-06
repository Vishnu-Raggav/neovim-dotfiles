return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local custom_theme = require("lualine.themes.jellybeans")

    local modes = { "normal", "insert", "visual" }

    for _, mode in ipairs(modes) do
      custom_theme[mode].b.bg = "#2a2a37"
    end

    custom_theme.normal.a.bg = "#c8c093"
    custom_theme.visual.a.bg = "#7fb4ca"

    custom_theme.normal.c.bg = "None"

    require("lualine").setup({
      options = {
	theme = custom_theme,
	component_separators = { left = '|', right = '|'},
	section_separators = { left = '', right = ''},
	globalstatus = true,
      },
      sections = {
	lualine_a = {'mode'},
	lualine_b = {{'branch', icon = ''}, 'diff'},
	lualine_c = {'filename'},
	lualine_x = {'encoding', 'fileformat', 'filetype'},
	lualine_y = {'progress'},
	lualine_z = {'location'}
      }
    })
  end
}
