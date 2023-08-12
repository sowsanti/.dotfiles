local harpoon_status, harpoon = pcall(require, "harpoon")
if not harpoon_status then
	vim.notify("harpoon plugin not found", vim.log.levels.WARN)
end

harpoon.setup({
	tabline = true,
	tabline_prefix = "   ",
	tabline_suffix = "   ",
})

local harpoon_mark_status, harpoon_mark = pcall(require, "harpoon.mark")
if not harpoon_mark_status then
	vim.notify("harpoon mark plugin extension not found", vim.log.levels.WARN)
end

vim.keymap.set("n", "<leader>a", harpoon_mark.add_file, { desc = "Add harpoon mark" })

local harpoon_ui_status, harpoon_ui = pcall(require, "harpoon.ui")
if not harpoon_ui_status then
	vim.notify("harpoon ui plugin extension not found", vim.log.levels.WARN)
end

vim.keymap.set("n", "<c-e>", harpoon_ui.toggle_quick_menu, { desc = "Toggle harpoon quick menu" })

vim.keymap.set("n", "<c-a>", function()
	harpoon_ui.nav_file(1)
end, { desc = "Harpoon nav to 1" })
vim.keymap.set("n", "<c-s>", function()
	harpoon_ui.nav_file(2)
end, { desc = "Harpoon nav to 2" })
vim.keymap.set("n", "<c-d>", function()
	harpoon_ui.nav_file(3)
end, { desc = "Harpoon nav to 3" })
vim.keymap.set("n", "<c-f>", function()
	harpoon_ui.nav_file(4)
end, { desc = "Harpoon nav to 4" })
