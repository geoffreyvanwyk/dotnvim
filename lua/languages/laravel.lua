--[[



 █████                                                          ████ 
░░███                                                          ░░███ 
 ░███         ██████   ████████   ██████   █████ █████  ██████  ░███ 
 ░███        ░░░░░███ ░░███░░███ ░░░░░███ ░░███ ░░███  ███░░███ ░███ 
 ░███         ███████  ░███ ░░░   ███████  ░███  ░███ ░███████  ░███ 
 ░███      █ ███░░███  ░███      ███░░███  ░░███ ███  ░███░░░   ░███ 
 ███████████░░████████ █████    ░░████████  ░░█████   ░░██████  █████
░░░░░░░░░░░  ░░░░░░░░ ░░░░░      ░░░░░░░░    ░░░░░     ░░░░░░  ░░░░░ 
                                                                     


    Laravel is a web application framework with expressive, elegant syntax. 

--]]

--[[

    Jesus said unto him, If thou canst believe, all things are possible to him that
    believeth.
    (Mark 9:23 KJV)

--]]

return {
	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		config = function(_, opts)
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}

			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			require("nvim-treesitter.configs").setup(opts)
		end,
	},

	---- EXTERNAL TOOL INSTALLATION -----------------------------------------------
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		opts = {
			ensure_installed = {
				"blade-formatter",
			},
		},
	},

	---- FORMATTING  -------------------------------------------------------------
	{
		"stevearc/conform.nvim",

		opts = {
			formatters_by_ft = {
				blade = { "blade-formatter" },
			},
			format_on_save = {
				timeout_ms = 20000,
			},
		},
	},
}
