--[[



  █████       █████                    ████ 
░░███       ░░███                    ░░███ 
 ░███████   ███████   █████████████   ░███ 
 ░███░░███ ░░░███░   ░░███░░███░░███  ░███ 
 ░███ ░███   ░███     ░███ ░███ ░███  ░███ 
 ░███ ░███   ░███ ███ ░███ ░███ ░███  ░███ 
 ████ █████  ░░█████  █████░███ █████ █████
░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░ ░░░░░ ░░░░░ 
                                           
                                           
                                                                                         
    [H]yper[T]ext [M]ark-up [L]angauge

--]]

--[[

    And the LORD said unto him, Therefore whosoever slayeth Cain, vengeance
    shall be taken on him sevenfold. And the LORD set a mark upon Cain, lest
    any finding him should kill him.
    (Genesis 4:15 KJV)

--]]

return {
	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		opts = { ensure_installed = { "html", "css" } },
	},

	---- EXTERNAL TOOL INSTALLATION -----------------------------------------------
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		opts = {
			ensure_installed = {
				"css-lsp",
				"emmet-language-server",
				"html-lsp",
				"tailwindcss-language-server",
				"prettierd",
			},
		},
	},

	---- LANGUAGE SERVER CONFIGURATION -------------------------------------------
	{
		"williamboman/mason-lspconfig.nvim",

		opts = {
			handlers = {
				emmet_language_server = function()
					require("lspconfig").emmet_language_server.setup({})
				end,
			},
		},
	},

	---- EMMET & NEOVIM INTEGRATION ----------------------------------------------
	{
		"olrtg/nvim-emmet",

		config = function()
			-- TODO: Move to mappings script
			vim.keymap.set({ "n", "v" }, "<leader>xe", require("nvim-emmet").wrap_with_abbreviation)
		end,
	},

	---- TAILWIND CSS ---------------------------------------------------------
	{
		"luckasRanarison/tailwind-tools.nvim",

		name = "tailwind-tools",

		build = ":UpdateRemotePlugins",

		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
			"neovim/nvim-lspconfig", -- optional
		},

		opts = {}, -- your configuration
	},

	---- FORMATTING  -------------------------------------------------------------
	{
		"stevearc/conform.nvim",

		opts = {
			formatters_by_ft = {
				css = { "prettier" },
				html = { "prettier" },
				less = { "prettier" },
				scss = { "prettier" },
			},
		},
	},
}
