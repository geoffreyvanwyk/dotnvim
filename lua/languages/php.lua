--[[



           █████               
          ░░███                
 ████████  ░███████   ████████ 
░░███░░███ ░███░░███ ░░███░░███
 ░███ ░███ ░███ ░███  ░███ ░███
 ░███ ░███ ░███ ░███  ░███ ░███
 ░███████  ████ █████ ░███████ 
 ░███░░░  ░░░░ ░░░░░  ░███░░░  
 ░███                 ░███     
 █████                █████    
░░░░░                ░░░░░     



    A popular general-purpose scripting language that is especially suited to
    web development. Fast, flexible and pragmatic, PHP powers everything from
    your blog to the most popular websites in the world.

--]]

--[[

    Howbeit Jesus suffered him not, but saith unto him, Go home to thy friends,
    and tell them how great things the Lord hath done for thee, and hath had
    compassion on thee.
    (Mark 5:19 KJV)

--]]

return {
	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		opts = { ensure_installed = { "php", "php_only", "phpdoc" } },
	},

	---- EXTERNAL TOOL INSTALLATION ----------------------------------------------
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		opts = {
			ensure_installed = {
				"phpactor",
				"php-cs-fixer",
				"phpcs",
			},
		},
	},

	---- LANGUAGE SERVER CONFIGURATION ----------------------------------------
	{
		"williamboman/mason-lspconfig.nvim",

		opts = {
			handlers = {
				phpactor = function()
					require("helpers").lsp_extend_server_capabilities("phpactor", {})
				end,
			},
		},
	},

	---- FORMATTING  -------------------------------------------------------------
	{
		"stevearc/conform.nvim",

		opts = { formatters_by_ft = { php = { "php_cs_fixer" } } },
	},

	---- LINTING  ----------------------------------------------------------------
	{
		"mfussenegger/nvim-lint",

		opts = { linters_by_ft = { php = { "phpcs" } } },
	},
}
