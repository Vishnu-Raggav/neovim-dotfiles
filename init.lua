-- Lazy (Package Manager)
require("config.lazy")

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.statuscolumn = "%l  "
vim.opt.scrolloff = 6
vim.opt.wrap = false
vim.opt.cmdheight = 0
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }

-- Keymappings
local builtin = require("telescope.builtin")
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'jk to exit out of insert mode' })
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })

-- Colors
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
vim.api.nvim_set_hl(0, 'Pmenu', { fg = '#a292a3', bg = '#353545' })
vim.api.nvim_set_hl(0, 'PmenuSel', { fg = '#1f1f28', bg = '#c4b28a' })
vim.api.nvim_set_hl(0, 'PmenuKind', { bg = '#353545', fg = '#8C8C97'  })
vim.api.nvim_set_hl(0, 'PmenuKindSel', { fg = '#1f1f28', bg = '#c4b28a'  })

-- LSP
vim.lsp.enable('ts_ls')
