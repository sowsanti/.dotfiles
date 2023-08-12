local kanagawa_status, kanagawa = pcall(require, "kanagawa")
if not kanagawa_status then
	vim.notify("kanagawa theme plugin not found", vim.log.levels.WARN)
	return
end

kanagawa.setup({
	overrides = function(colors)
		local theme = colors.theme
		return {
			-- telescope square borders
			TelescopeTitle = { fg = theme.ui.special, bold = true },
			TelescopePromptNormal = { bg = theme.ui.bg_p1 },
			TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
			TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
			TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
			TelescopePreviewNormal = { bg = theme.ui.bg_dim },
			TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
			-- tabline
			TablineFill = { bg = theme.diff.change },
			-- harpoon tabline
			HarpoonActive = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
			HarpoonInactive = { bg = theme.diff.change, fg = theme.syn.fun },
			HarpoonNumberActive = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
			HarpoonNumberInactive = { bg = theme.diff.change, fg = theme.syn.fun },
		}
	end,
})

vim.cmd.colorscheme("kanagawa")
