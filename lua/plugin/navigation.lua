vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{
		src = "https://github.com/ThePrimeagen/harpoon",
		version = "harpoon2",
	},
})

-- OIL
require("nvim-web-devicons").setup()
require("oil").setup({
	default_file_explorer = true,
	columns = { "icon" },
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "<leader>e", vim.cmd.Oil)

-- HARPOON
local harpoon = require("harpoon")

harpoon:setup({
	settings = {
		excluded_filetypes = { "oil", "netrw" },
	},
})

vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<leader>he", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>h1", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>h2", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>h3", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>h4", function()
	harpoon:list():select(4)
end)
