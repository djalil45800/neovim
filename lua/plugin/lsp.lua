vim.pack.add({
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/stevearc/conform.nvim" },
})

-- MASON
require("mason").setup()
local lspconfig = require("lspconfig")
local capabilities = require("blink.cmp").get_lsp_capabilities()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "stylua" },
	handlers = {
		function(server_name)
			lspconfig[server_name].setup({
				capabilities = capabilities,
			})
		end,
	},
})

-- BLINK
require("blink.cmp").setup({
	keymap = { preset = "enter" },
	snippets = { preset = "default" },
	fuzzy = {
		prebuilt_binaries = {
			download = true,
			implementation = "prefer_rust",
			force_version = "v1.*",
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	completion = {
		menu = { border = "rounded" },
		documentation = {
			window = { border = "rounded" },
			auto_show = true,
		},
	},
})

-- CONFORM
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local opts = { buffer = args.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>mp", function()
			require("conform").format({ bufnr = args.buf })
		end, opts)
	end,
})
