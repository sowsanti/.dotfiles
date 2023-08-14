local harpoon_line = require("sss.plugins.lualine.harpoon-line")
harpoon_line.setup({
	tabline_prefix = " %#HarpoonActive#| ",
	tabline_suffix = "%#HarpoonActive# |",
	tabline_prefix_inactive = " %#HarpoonInactive#| ",
	tabline_suffix_inactive = "%#HarpoonInactive# |",
})

vim.o.tabline = "%!v:lua.harpoonline()"
print(_G.harpoonline() .. "a")

require("lualine").setup({
	options = {
		icons_enabled = true,
		component_separators = "|",
		section_separators = "",
	},
	sections = {
		lualine_x = {
			{
				_G.harpoonline,
			},
		},
		lualine_a = {
			{
				"filename",
			},
		},
		lualine_c = {
			{},
		},
	},
})
