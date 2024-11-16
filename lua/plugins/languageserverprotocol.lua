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
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cst",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Trouble",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
}
