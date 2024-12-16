--[[



       █████                                             
      ░░███                                              
       ░███   ██████   █████ █████  ██████               
       ░███  ░░░░░███ ░░███ ░░███  ░░░░░███              
       ░███   ███████  ░███  ░███   ███████              
 ███   ░███  ███░░███  ░░███ ███   ███░░███              
░░████████  ░░████████  ░░█████   ░░████████             
 ░░░░░░░░    ░░░░░░░░    ░░░░░     ░░░░░░░░              
                                                         
  █████████                      ███             █████   
 ███░░░░░███                    ░░░             ░░███    
░███    ░░░   ██████  ████████  ████  ████████  ███████  
░░█████████  ███░░███░░███░░███░░███ ░░███░░███░░░███░   
 ░░░░░░░░███░███ ░░░  ░███ ░░░  ░███  ░███ ░███  ░███    
 ███    ░███░███  ███ ░███      ░███  ░███ ░███  ░███ ███
░░█████████ ░░██████  █████     █████ ░███████   ░░█████ 
 ░░░░░░░░░   ░░░░░░  ░░░░░     ░░░░░  ░███░░░     ░░░░░  
                                      ░███               
                                      █████              
                                     ░░░░░               



    JavaScript is a high-level programming language that follows the ECMAScript
    standard. It was originally designed as a scripting language for websites but
    became widely adopted as a general-purpose programming language,                                          
                                                                                         
--]]

--[[

    Seventy weeks are determined upon thy people and upon thy holy city, to finish
    the transgression, and to make an end of sins, and to make reconciliation for
    iniquity, and to bring in everlasting righteousness, and to seal up the vision
    and prophecy, and to anoint the most Holy.
    (Daniel 9:24 KJV)

--]]

return {
	---- SYNTAX HIGHLIGHTING ------------------------------------------------------
	{
		"nvim-treesitter/nvim-treesitter",

		opts = { ensure_installed = { "javascript", "typescript" } },
	},
	---- TYPESCRIPT & JAVASCRIPT TOOLS -------------------------------------------
	{
		"pmizio/typescript-tools.nvim",

		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },

		opts = {},
	},
}
