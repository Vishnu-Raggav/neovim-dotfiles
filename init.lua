-- Lazy (Package Manager)
require("config.lazy")

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 6
vim.opt.wrap = false
vim.opt.cmdheight = 0
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.clipboard = "unnamedplus"

-- Keymappings
local builtin = require("telescope.builtin")
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'jk to exit out of insert mode' })
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })

-- Colors
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
