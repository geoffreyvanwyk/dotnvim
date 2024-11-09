--[[



              █████  ███   █████     ███                     
             ░░███  ░░░   ░░███     ░░░                      
  ██████   ███████  ████  ███████   ████  ████████    ███████
 ███░░███ ███░░███ ░░███ ░░░███░   ░░███ ░░███░░███  ███░░███
░███████ ░███ ░███  ░███   ░███     ░███  ░███ ░███ ░███ ░███
░███░░░  ░███ ░███  ░███   ░███ ███ ░███  ░███ ░███ ░███ ░███
░░██████ ░░████████ █████  ░░█████  █████ ████ █████░░███████
 ░░░░░░   ░░░░░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███
                                                     ███ ░███
                                                    ░░██████ 
                                                     ░░░░░░  



    To prepare (written material) for publication or presentation, as by
    correcting, revising, or adapting.

--]]

--[[

    And thou shalt write upon the stones all the words of this law very
    plainly.
    (Deuteronomy 27:8 KJV)

--]]

return {
	{
		--[[
        Plugin for splitting or joining blocks of code like arrays,
        hashes, statements, objects, dictionaries, etc.
        --]]

		"Wansmer/treesj",
	},
	{
		--[[
        Plugin for automatically completing punctuation pairs like quotes and
        parentheses.
        --]]

		"windwp/nvim-autopairs",

		event = "InsertEnter",

		-- Optional dependency
		dependencies = { "hrsh7th/nvim-cmp" },

		config = function()
			require("nvim-autopairs").setup({
				fast_wrap = {},
			})

			-- If you want to automatically add `(` after selecting a function or method
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{
		"abecodes/tabout.nvim",

		event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility

		priority = 1000,

		lazy = false,

		opts = {},

		dependencies = { -- These are optional
			"nvim-treesitter/nvim-treesitter",
			{
				"L3MON4D3/LuaSnip",

				keys = function()
					-- Disable default tab keybinding in LuaSnip
					return {}
				end,
			},
			"hrsh7th/nvim-cmp",
		},
	},
	{
		--[[
        Add/change/delete surrounding delimiter pairs with ease. Written with ❤️
        in Lua.
        --]]

		"kylechui/nvim-surround",

		version = "*", -- Use for stability; omit to use `main` branch for the latest features

		event = "VeryLazy",

		opts = {},
	},
	{
		--[[
        suda is a plugin to read or write files with sudo command. 
        --]]

		"lambdalisue/vim-suda",

		init = function()
			vim.g.suda_smart_edit = 1
		end,
	},
}
