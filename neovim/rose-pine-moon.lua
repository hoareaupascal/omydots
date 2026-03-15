return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
			transparent = true,
			-- Rosé Pine specific integrations
			highlight_groups = {
				TelescopeBorder = { fg = "highlight_high", bg = "none" },
				TelescopeNormal = { bg = "none" },
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "rose-pine",
		},
	},
}
