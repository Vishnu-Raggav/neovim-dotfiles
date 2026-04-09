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
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }

-- Keymappings
local builtin = require("telescope.builtin")
vim.keymap.set("i", "jk", "<Esc>", { desc = "jk to exit out of insert mode" })
vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })

vim.keymap.set(
  "i",
  "<C-j>",
  'pumvisible() ? "<C-n>" : "<C-j>"',
  { desc = "remap popup-menu next match", expr = true, noremap = true }
)
vim.keymap.set(
  "i",
  "<C-k>",
  'pumvisible() ? "<C-p>" : "<C-k>"',
  { desc = "remap popup-menu previous match", expr = true, noremap = true }
)

vim.api.nvim_set_keymap("i", "(", "()<Left>", { desc = "autoclose (", noremap = true })
vim.api.nvim_set_keymap("i", "[", "[]<Left>", { desc = "autoclose [", noremap = true })
vim.api.nvim_set_keymap("i", "{", "{}<Left>", { desc = "autoclose {", noremap = true })
vim.api.nvim_set_keymap("i", '"', '""<Left>', { desc = 'autoclose "', noremap = true })
vim.api.nvim_set_keymap("i", "'", "''<Left>", { desc = "autoclose '", noremap = true })

-- Colors
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

vim.api.nvim_set_hl(0, "Pmenu", { fg = "#a292a3", bg = "#353545" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#1f1f28", bg = "#c4b28a" })
vim.api.nvim_set_hl(0, "PmenuKind", { bg = "#353545", fg = "#8C8C97" })
vim.api.nvim_set_hl(0, "PmenuKindSel", { fg = "#1f1f28", bg = "#c4b28a" })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "none", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "none", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "none", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "none", bold = true })

-- LSP
vim.lsp.enable("ts_ls")

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " 󰅖",
      [vim.diagnostic.severity.WARN] = " 󰅖",
      [vim.diagnostic.severity.INFO] = " 󰅖",
      [vim.diagnostic.severity.HINT] = " 󰅖",
    },
  },
  virtual_text = true,
  update_in_insert = true,
})
