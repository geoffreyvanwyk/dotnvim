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
                nvim-cmp source for neovim builtin LSP client
                --]]

				"hrsh7th/cmp-nvim-lsp",
			},
		},

		config = function()
			require("config.autocommands").autocmds_for_lsp()
		end,
	},
	{
		--[[
        Portable package manager for Neovim that runs everywhere
        Neovim runs. Easily install and manage LSP servers, DAP
        servers, linters, and formatters.               

         NOTE: Must be loaded before dependants
        --]]

		"williamboman/mason.nvim",

		opts = {},
	},
	{
		--[[
        Extension to mason.nvim that makes it easier to use lspconfig
        with mason.nvim.
        --]]

		"williamboman/mason-lspconfig.nvim",

		opts = {},
	},
	{
		--[[
        Install and upgrade third party tools automatically
        --]]

		"WhoIsSethDaniel/mason-tool-installer",

		opts = {},
	},
}
