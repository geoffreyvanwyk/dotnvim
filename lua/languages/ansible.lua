--[[



                               ███  █████     ████          
                              ░░░  ░░███     ░░███          
  ██████   ████████    █████  ████  ░███████  ░███   ██████ 
 ░░░░░███ ░░███░░███  ███░░  ░░███  ░███░░███ ░███  ███░░███
  ███████  ░███ ░███ ░░█████  ░███  ░███ ░███ ░███ ░███████ 
 ███░░███  ░███ ░███  ░░░░███ ░███  ░███ ░███ ░███ ░███░░░  
░░████████ ████ █████ ██████  █████ ████████  █████░░██████ 
 ░░░░░░░░ ░░░░ ░░░░░ ░░░░░░  ░░░░░ ░░░░░░░░  ░░░░░  ░░░░░░  
                                                            
                                                            
                                                            
    Ansible is an open source IT automation engine that automates provisioning,
    configuration management, application deployment, orchestration, and many
    other IT processes.

--]]

--[[

    NUN. Thy word is a lamp unto my feet, and a light unto my path. 
    (Psalms 119:105 KJV)

--]]

return {
	---- FILE TYPE DETECTION -----------------------------------------------------
	{
		--[[
        Autodetects yaml.ansible file type, and other features.    
        --]]

		"mfussenegger/nvim-ansible",
	},

	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		opts = { ensure_installed = { "yaml" } },
	},

	---- EXTERNAL TOOL INSTALLATION ----------------------------------------------
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		opts = {
			ensure_installed = {
				"ansible-language-server",
				"ansible-lint",
				"prettierd",
			},
		},
	},

	---- LANGUAGE SERVER CONFIGURATION ----------------------------------------
	{
		"williamboman/mason-lspconfig.nvim",

		opts = {
			handlers = {
				ansiblels = function()
					require("helpers").lsp_extend_server_capabilities("ansiblels", {})
				end,
			},
		},
	},

	---- FORMATTING  -------------------------------------------------------------
	{
		"stevearc/conform.nvim",

		opts = { formatters_by_ft = { ["yaml.ansible"] = { "prettierd" } } },
	},

	---- LINTING  ----------------------------------------------------------------
	{
		"mfussenegger/nvim-lint",

		opts = { linters_by_ft = { ansible = { "ansible_lint" } } },
	},
}
