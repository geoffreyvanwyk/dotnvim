--[[



 █████               ████                                      
░░███               ░░███                                      
 ░███████    ██████  ░███  ████████   ██████  ████████   █████ 
 ░███░░███  ███░░███ ░███ ░░███░░███ ███░░███░░███░░███ ███░░  
 ░███ ░███ ░███████  ░███  ░███ ░███░███████  ░███ ░░░ ░░█████ 
 ░███ ░███ ░███░░░   ░███  ░███ ░███░███░░░   ░███      ░░░░███
 ████ █████░░██████  █████ ░███████ ░░██████  █████     ██████ 
░░░░ ░░░░░  ░░░░░░  ░░░░░  ░███░░░   ░░░░░░  ░░░░░     ░░░░░░  
                           ░███                                
                           █████                               
                          ░░░░░                                


    Helper functions are small, reusable functions that perform a specific task or
    computation, making your code more modular, readable, and maintainable.

--]]

--[[

    And the LORD God said, It is not good that the man should be alone; I will
    make him an help meet for him.
    (Genesis 2:18 KJV)

--]]

local M = {}

M.lsp_extend_server_capabilities = function(server_name, server)
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

	-- This handles overriding only values explicitly passed
	-- by the server configuration above. Useful when disabling
	-- certain features of an LSP (for example, turning off formatting for ts_ls)
	server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
	require("lspconfig")[server_name].setup(server)
end

return M
