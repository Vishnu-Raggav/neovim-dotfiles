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
	  TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = "none" },

	  AlphaHeader = { fg = "#c4b28a", bg = "none" },
	  AlphaButton = { fg = "#76946a", bg = "none" },
	  AlphaButtonShortcut = { fg = "#a292a3", bg = "none" },
      }
      end
    })

    vim.cmd("colorscheme kanagawa-paper")
  end
}
