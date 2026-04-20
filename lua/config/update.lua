vim.api.nvim_create_user_command("PackUpdate", function()
	local pack_path = vim.fn.stdpath("data") .. "/site/pack/downloads/start/*"
	vim.fn.jobstart("for d in " .. pack_path .. '; do (cd "$d" && git pull); done', {
		on_exit = function()
			print("Plugins updated successfully!")
		end,
	})
end, {})
