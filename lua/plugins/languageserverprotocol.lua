--[[



 ████                                                                      
░░███                                                                      
 ░███   ██████   ████████    ███████ █████ ████  ██████    ███████  ██████ 
 ░███  ░░░░░███ ░░███░░███  ███░░███░░███ ░███  ░░░░░███  ███░░███ ███░░███
 ░███   ███████  ░███ ░███ ░███ ░███ ░███ ░███   ███████ ░███ ░███░███████ 
 ░███  ███░░███  ░███ ░███ ░███ ░███ ░███ ░███  ███░░███ ░███ ░███░███░░░  
 █████░░████████ ████ █████░░███████ ░░████████░░████████░░███████░░██████ 
░░░░░  ░░░░░░░░ ░░░░ ░░░░░  ░░░░░███  ░░░░░░░░  ░░░░░░░░  ░░░░░███ ░░░░░░  
                            ███ ░███                      ███ ░███         
                           ░░██████                      ░░██████          
                            ░░░░░░                        ░░░░░░           
                                                                           
  █████   ██████  ████████  █████ █████  ██████  ████████                  
 ███░░   ███░░███░░███░░███░░███ ░░███  ███░░███░░███░░███                 
░░█████ ░███████  ░███ ░░░  ░███  ░███ ░███████  ░███ ░░░                  
 ░░░░███░███░░░   ░███      ░░███ ███  ░███░░░   ░███                      
 ██████ ░░██████  █████      ░░█████   ░░██████  █████                     
░░░░░░   ░░░░░░  ░░░░░        ░░░░░     ░░░░░░  ░░░░░                      
                                                                           
                                                                           
                               █████                               ████    
                              ░░███                               ░░███    
 ████████  ████████   ██████  ███████    ██████   ██████   ██████  ░███    
░░███░░███░░███░░███ ███░░███░░░███░    ███░░███ ███░░███ ███░░███ ░███    
 ░███ ░███ ░███ ░░░ ░███ ░███  ░███    ░███ ░███░███ ░░░ ░███ ░███ ░███    
 ░███ ░███ ░███     ░███ ░███  ░███ ███░███ ░███░███  ███░███ ░███ ░███    
 ░███████  █████    ░░██████   ░░█████ ░░██████ ░░██████ ░░██████  █████   
 ░███░░░  ░░░░░      ░░░░░░     ░░░░░   ░░░░░░   ░░░░░░   ░░░░░░  ░░░░░    
 ░███                                                                      
 █████                                                                     
░░░░░                                                                      



    The Language Server Protocol (LSP) defines the protocol used between an editor
    or IDE and a language server that provides language features like auto
    complete, go to definition, find all references etc. 

--]]

--[[

    My doctrine shall drop as the rain, my speech shall distil as the dew, as
    the small rain upon the tender herb, and as the showers upon the grass:
    (Deuteronomy 32:2 KJV)

--]]

return {
	{
		--[[
        nvim-lspconfig is a "data only" repo, providing basic, default Nvim LSP
        client configurations for various LSP servers.
        --]]

		"neovim/nvim-lspconfig",

		dependencies = {
			{
				--[[
                Portable package manager for Neovim that runs everywhere
                Neovim runs. Easily install and manage LSP servers, DAP
                servers, linters, and formatters.               

                 NOTE: Must be loaded before dependants
                --]]

				"williamboman/mason.nvim",

				config = true,
			},
			{
				--[[
                Extension to mason.nvim that makes it easier to use lspconfig
                with mason.nvim.
                --]]

				"williamboman/mason-lspconfig.nvim",
			},
			{
				--[[
                Install and upgrade third party tools automatically
                --]]

				"WhoIsSethDaniel/mason-tool-installer.nvim",
			},
			{
				--[[
                nvim-cmp source for neovim builtin LSP client
                --]]

				"hrsh7th/cmp-nvim-lsp",
			},
		},

		config = function()
			require("config.autocommands").autocmds_for_lsp()

			-- LSP servers and clients are able to communicate to each other what features they support.
			--  By default, Neovim doesn't support everything that is in the LSP specification.
			--  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
			--  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

			-- Enable the following language servers
			--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
			--
			--  Add any additional override configuration in the following tables. Available keys are:
			--  - cmd (table): Override the default command used to start the server
			--  - filetypes (table): Override the default list of associated filetypes for the server
			--  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
			--  - settings (table): Override the default settings passed when initializing the server.
			--        For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
			local servers = {
				-- clangd = {},
				-- gopls = {},
				-- pyright = {},
				-- rust_analyzer = {},
				-- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
				--
				-- Some languages (like typescript) have entire language plugins that can be useful:
				--    https://github.com/pmizio/typescript-tools.nvim
				--
				-- But for many setups, the LSP (`ts_ls`) will work just fine
				-- ts_ls = {},
				--
			}

			-- Ensure the servers and tools above are installed
			--  To check the current status of installed tools and/or manually install
			--  other tools, you can run
			--    :Mason
			--
			--  You can press `g?` for help in this menu.
			require("mason").setup()

			-- You can add other tools here that you want Mason to install
			-- for you, so that they are available from within Neovim.
			local ensure_installed = vim.tbl_keys(servers or {})
			vim.list_extend(ensure_installed, {
				-- add more tools
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						-- This handles overriding only values explicitly passed
						-- by the server configuration above. Useful when disabling
						-- certain features of an LSP (for example, turning off formatting for ts_ls)
						server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
						require("lspconfig")[server_name].setup(server)
					end,
				},
			})
		end,
	},
}
