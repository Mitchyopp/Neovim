vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.write)
vim.keymap.set("n", "<leader>q", vim.cmd.quit)

-- Mini.trailspace
vim.keymap.set("n", "<leader>tw", "lua MiniTrailspace.trim_last_lines()")
