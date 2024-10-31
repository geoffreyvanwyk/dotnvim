--[[



                                               █████      
                                              ░░███       
  █████   ██████   ██████   ████████   ██████  ░███████   
 ███░░   ███░░███ ░░░░░███ ░░███░░███ ███░░███ ░███░░███ 
░░█████ ░███████   ███████  ░███ ░░░ ░███ ░░░  ░███ ░███  
 ░░░░███░███░░░   ███░░███  ░███     ░███  ███ ░███ ░███  
 ██████ ░░██████ ░░████████ █████    ░░██████  ████ █████ 
░░░░░░   ░░░░░░   ░░░░░░░░ ░░░░░      ░░░░░░  ░░░░ ░░░░░ 
                                                          
                                                          
                                                          
    Searching all the different types of content in Neovim:

        * text
        * buffers
        * files
        * symbols
        * options
        * etc.

--]]

--[[

    There is none that understandeth, there is none that seeketh after God.
    (Romans 3:11 KJV)

--]]

return {
	--[[
    Find, Filter, Preview, Pick. All lua, all the time.
    --]]

	"nvim-telescope/telescope.nvim",

	event = "VimEnter",

	branch = "0.1.x",

	dependencies = {
		"nvim-lua/plenary.nvim",

		{ -- If encountering errors, see telescope-fzf-native README for installation instructions
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},

		{ "nvim-telescope/telescope-ui-select.nvim" },

		-- Useful for getting pretty icons, but requires a Nerd Font.
		{ "nvim-tree/nvim-web-devicons", enabled = true },
	},

	config = function()
		-- Two important keymaps to use while in Telescope are:
		--  - Insert mode: <c-/>
		--  - Normal mode: ?
		--
		-- This opens a window that shows you all of the keymaps for the current
		-- Telescope picker. This is really useful to discover what Telescope can
		-- do as well as how to actually do it!

		-- [[ Configure Telescope ]]
		-- See `:help telescope` and `:help telescope.setup()`
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
	end,
}
