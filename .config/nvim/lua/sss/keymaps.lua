vim.keymap.set("n", "<leader>fv", "<cmd>Ex<cr>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<cr>", { desc = "Clear highlights" })
vim.keymap.set("n", "<leader>s|", "<c-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>s-", "<c-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sx", "<c-w>c", { desc = "Close split" })
vim.keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<cr>", { desc = "Maximize current spli" })
-- theme toggle
vim.keymap.set("n", "<leader>tt", function()
	if vim.api.nvim_get_option("background") == "dark" then
		vim.opt.background = "light"
	else
		vim.opt.background = "dark"
	end
end, { desc = "[T]heme [T]oggle (dark/light)" })
-- telescope pickers
vim.keymap.set("n", "<leader>tp", function()
	require("telescope.builtin").colorscheme(require("telescope.themes").get_dropdown())
end, { desc = "[T]theme [P]icker" })
vim.keymap.set("n", "<leader>sk", function()
	require("telescope.builtin").keymaps()
end, { desc = "[S]earch [K]eymap" })
vim.keymap.set("n", "<leader>st", function()
	require("telescope.builtin").filetypes(require("telescope.themes").get_dropdown())
end, { desc = "[S]earch file[T]ypes" })
vim.keymap.set("n", "<leader>sc", function()
	require("telescope.builtin").find_files({
		prompt_title = "dotfiles",
		hidden = true,
		cwd = "~/.config",
	})
end, { desc = "[S]earch [C]onfigs (dotfiles)" })
vim.keymap.set("n", "<leader>cd", require("telescope.builtin").diagnostics, { desc = "[C]ode [D]iagnostics" })
-- fugitive
vim.keymap.set("n", "<leader>gd", "<cmd>Git diff<cr>", { desc = "[G]it [D]iff" })
vim.keymap.set("n", "<leader>gs", "<cmd>Git status<cr>", { desc = "[G]it [S]tatus" })
-- FTerm
vim.keymap.set("n", "<leader>tf", ":lua require('FTerm').toggle()<CR>", { noremap = true, desc = "[T]oggle [F]term" })
vim.keymap.set(
	"t",
	"<leader>tf",
	'<C-\\><C-n>:lua require("FTerm").toggle()<CR>',
	{ noremap = true, desc = "[T]oggle [F]term" }
)

-- do not copy to register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<del>", '"_x')

-- unmap keys
vim.keymap.set("n", "<f3>", "<nop>")

-- remap :W to write file
vim.cmd("command! -nargs=0 W :w")
