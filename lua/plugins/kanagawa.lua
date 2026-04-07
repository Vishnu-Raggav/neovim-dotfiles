return {
  "thesimonho/kanagawa-paper.nvim",
  config = function()
    require("kanagawa-paper").setup({
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
	      float = {
		bg = "none"
	      }
            }
          }
        }
      },
      overrides = function(colors)
      local theme = colors.theme
      return {
	  FloatBorder = { bg = "none" },
	  FloatTitle = { bg = "none" },
	  TelescopeTitle = { fg = "#c8c093", bg = 'none', bold = true },
	  TelescopeWindowBorder = { fg = "#ffffff" },
	  TelescopePromptNormal = { bg = "none" },
	  TelescopeSelection = { bg = "none", fg = "#c8c093" },
--	  TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
	  TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },
--	  TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
--	  TelescopePromptNormal = { bg = "none" }
      }
      end
    })

    vim.cmd("colorscheme kanagawa-paper")
  end
}
