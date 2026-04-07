return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
	'sharkdp/fd',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
	defaults = {
	  prompt_prefix = '   ',
	  entry_prefix = '    ',
	  selection_caret = '   ',
	  border = false,
	  preview = false,
	  mappings = {
	    i = {
	      ["<esc>"] = actions.close,
	      ["<C-u>"] = false
	    },
	  },
	},
	pickers = {
	  find_files = {
	    theme = "dropdown",
	  }
	}
      })
    end
}
