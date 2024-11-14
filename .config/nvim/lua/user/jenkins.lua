vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "Jenkinsfile*",
	callback = function()
		vim.bo.filetype = "groovy"
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.softtabstop = 4
		vim.bo.expandtab = true
	end,
})