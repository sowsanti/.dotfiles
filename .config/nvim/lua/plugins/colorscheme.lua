return {
  -- "catppuccin/nvim",
  -- name = "catppuccin",
  -- priority = 1000,
  -- opts = function()
  --   return {
  --     flavour = "mocha", -- latte, frappe, macchiato, mocha
  --     background = { -- :h background
  --       light = "latte",
  --       dark = "mocha",
  --     },
  --     transparent_background = false, -- disables setting the background color.
  --     dim_inactive = {
  --       enabled = false, -- dims the background color of inactive window
  --       shade = "dark",
  --       percentage = 0.15, -- percentage of the shade to apply to the inactive window
  --     },
  --     styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --       comments = { "italic" }, -- Change the style of comments
  --       conditionals = { "italic" },
  --     },
  --     integrations = {
  --       cmp = true,
  --       gitsigns = true,
  --       nvimtree = true,
  --       treesitter = true,
  --       notify = false,
  --       mini = {
  --         enabled = true,
  --         indentscope_color = "",
  --       },
  --       -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  --     },
  --   }
  -- end,
  --
  -- "craftzdog/solarized-osaka.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- opts = {},
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
