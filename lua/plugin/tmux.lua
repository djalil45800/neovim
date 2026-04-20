vim.pack.add({
	{ src = "https://github.com/christoomey/vim-tmux-navigator" },
})

vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set("n", "<M-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
vim.keymap.set("n", "<M-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Tmux Down" })
vim.keymap.set("n", "<M-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Tmux Up" })
vim.keymap.set("n", "<M-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Tmux Right" })
