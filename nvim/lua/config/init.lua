-- Visual
vim.opt.relativenumber = true
vim.opt.number = true;

-- Indentation
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Maps
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>Q", ":q!<cr>")

-- Filetypes
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.env.*",
  callback = function()
    vim.bo.filetype = "env"
  end
})

-- By default, in some projects, the backup copy is created by renaming the original file
-- This can be a problem when using a file watcher, so we can change the behavior to create a copy of the file
-- This way, the file watcher will not be triggered when the file is saved
-- Backup copy
vim.opt.backupcopy = "yes"

require("config.lazy")
