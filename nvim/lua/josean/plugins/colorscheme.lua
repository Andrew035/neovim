return {
	{
		-- catppuccin
		enabled = true, -- dims the background color of inactive window
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				background = { -- :h background light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
				-- dim_inactive = {
				-- 	shade = "dark",
				-- 	percentage = 0.15, -- percentage of the shade to apply to the inactive window
				-- 	enabled = true,
				-- },
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic", "bold" },
					loops = {},
					functions = { "italic", "bold" },
					keywords = { "italic" },
					strings = {},
					variables = { "italic" },
					numbers = {},
					booleans = {},
					properties = {},
					types = { "italic" },
					operators = { "italic" },
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})
			-- setup must be called before loading
			vim.cmd.colorscheme("catppuccin")
			vim.opt.fillchars = { eob = " " }
		end,
	},
	{
		enabled = false,
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			local transparent = true -- set to true if you would like to enable transparency

			-- local bg = "#011628"
			-- local bg_dark = "#011423"
			-- local bg_highlight = "#143652"
			-- local bg_search = "#0A64AC"
			-- local bg_visual = "#275378"
			-- local fg = "#CBE0F0"
			-- local fg_dark = "#B4D0E9"
			-- local fg_gutter = "#627E97"
			-- local border = "#547998"

			require("tokyonight").setup({
				style = "night",
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
					comments = { italic = true },
					keywords = { italic = true, bold = true },
					functions = { italic = true, bold = true },
					variables = {},
				},
				on_highlights = function(colors, temp) end,
				on_colors = function(colors)
					-- colors.bg = bg
					-- colors.bg_dark = transparent and colors.none or bg_dark
					-- colors.bg_float = transparent and colors.none or bg_dark
					-- colors.bg_highlight = bg_highlight
					-- colors.bg_popup = bg_dark
					-- colors.bg_search = bg_search
					-- colors.bg_sidebar = transparent and colors.none or bg_dark
					-- colors.bg_statusline = transparent and colors.none or bg_dark
					-- colors.bg_visual = bg_visual
					-- colors.border = border
					-- colors.fg = fg
					-- colors.fg_dark = fg_dark
					-- colors.fg_float = fg
					-- colors.fg_gutter = fg_gutter
					-- colors.fg_sidebar = fg_dark
				end,
			})

			vim.cmd("colorscheme tokyonight")
			vim.opt.fillchars = { eob = " " }
		end,
	},
	{
		enabled = false,
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").setup({
				transparent = {
					bg = false,
					float = false,
				},
				bold_keywords = true,
				italic_comments = true,
				reduced_blue = false,
				noice = {
					style = "classic",
				},
				telescope = {
					style = "classic",
				},
			})
			vim.cmd.colorscheme("nordic")
			vim.opt.fillchars = { eob = " " }
		end,
	},
	{
		enabled = false,
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = { italic = true },
					variables = {},
					sidebars = "transparent",
					floats = "transparent",
				},
			})
			vim.cmd.colorscheme("solarized-osaka")
			vim.opt.fillchars = { eob = " " }
		end,
	},
	{
		enabled = false,
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "moon",
				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},
			})
			vim.cmd.colorscheme("rose-pine")
			vim.opt.fillchars = { eob = " " }
		end,
	},
}
