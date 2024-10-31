--[[



 ████                      
░░███                      
 ░███  █████ ████  ██████  
 ░███ ░░███ ░███  ░░░░░███ 
 ░███  ░███ ░███   ███████ 
 ░███  ░███ ░███  ███░░███ 
 █████ ░░████████░░████████
░░░░░   ░░░░░░░░  ░░░░░░░░ 



    Lua is a powerful, efficient, lightweight, embeddable scripting language.

--]]

--[[

    And he dreamed yet another dream, and told it his brethren, and said,
    Behold, I have dreamed a dream more; and, behold, the sun and the moon and
    the eleven stars made obeisance to me.
    (Genesis 37:9 KJV)

--]]

return {
	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		optional = true,
		opts = { ensure_installed = { "lua", "luadoc" } },
	},
	---- EXTERNAL TOOL INSTALLATION ----------------------------------------------
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		opts = {
			ensure_installed = {
				"lua_ls",
				"stylua",
			},
		},
	},
	---- LANGUAGE SERVER CONFIGURATION ----------------------------------------
	{
		"williamboman/mason-lspconfig.nvim",

		opts = {
			handlers = {
				lua_ls = function()
					local server_name = "lua_ls"

					local server = {
						-- cmd = {...},
						-- filetypes = { ...},
						-- capabilities = {},
						settings = {
							Lua = {
								completion = {
									callSnippet = "Replace",
								},
								-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
								-- diagnostics = { disable = { 'missing-fields' } },
							},
						},
					}

					local capabilities = vim.lsp.protocol.make_client_capabilities()
					capabilities =
						vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

					-- This handles overriding only values explicitly passed
					-- by the server configuration above. Useful when disabling
					-- certain features of an LSP (for example, turning off formatting for ts_ls)
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					require("lspconfig")[server_name].setup(server)
				end,
			},
		},
	},
	{
		--[[
        Properly configures LuaLS for editing your Neovim config by lazily
        updating your workspace libraries.
        --]]

		"folke/lazydev.nvim",

		ft = "lua",

		opts = {
			library = {
				{ -- Load luvit types when the `vim.uv` word is found
					path = "luvit-meta/library",
					words = { "vim%.uv" },
				},
			},
		},
	},
	{
		--[[
        A collection of definition files for the framework Luvit.    
        --]]

		"Bilal2453/luvit-meta",

		lazy = true,
	},
	---- FORMATTING  -------------------------------------------------------------
	{
		"stevearc/conform.nvim",

		opts = { formatters_by_ft = { lua = { "stylua" } } },
	},
}
