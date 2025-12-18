return {
	"nvim-mini/mini.pairs",
	version = false,
	config = function()
		require("mini.pairs").setup({
			-- Some pattern from LazyVim
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			-- and there are more closing pairs than opening pairs
			skip_unbalanced = true,
			-- better deal with markdown code blocks
			markdown = true,
		})
	end,
}
