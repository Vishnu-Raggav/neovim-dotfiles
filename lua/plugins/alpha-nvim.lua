return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-mini/mini.icons' },
  config = function ()
    local alpha = require "alpha"

    local dashboard = require "alpha.themes.dashboard"
    local header = dashboard.section.header
    local buttons = dashboard.section.buttons

    local function replace_opts_from_button(array_button)
      for index, value in ipairs(array_button) do
	value.opts.hl = "AlphaButton"
	value.opts.hl_shortcut = "AlphaButtonShortcut"
      end
      return array_button
    end

    -- Header
    header.val = {
	[[                                                    ]],
	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	[[                                                    ]],
    }
    header.opts.hl = "AlphaHeader"

    -- Buttons
    buttons.val = replace_opts_from_button({
      dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button( "SPC f", "  Find Files"),
      dashboard.button( "h", "󰋖  Help", ":help<CR>"),
      dashboard.button( "q", "  Quit Editor" , ":qa<CR>"),
    })

    -- Layout
    dashboard.config.layout = {
      { type = "padding", val = 5},
      header,
      { type = "padding", val = 2},
      buttons,
    }

    alpha.setup(dashboard.opts)
  end
}
