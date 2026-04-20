vim.pack.add({
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
})

require("lualine").setup({
	options = {
		theme = "tokyonight",
		component_separators = "",
		section_separators = { left = "", right = "" },
		disabled_filetypes = { statusline = { "alpha", "dashboard", "NvimTree", "Outline" } },
	},
	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { "filename", "branch" },
		lualine_c = { "%=" },
		lualine_x = { "diagnostics" },
		lualine_y = { "filetype", "progress" },
		lualine_z = {
			{
				function()
					return vim.api.nvim_buf_line_count(0) .. "L"
				end,
				separator = { right = "" },
				left_padding = 2,
			},
		},
	},
})
