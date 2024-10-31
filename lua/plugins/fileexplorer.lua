--[[


    ██████   ███  ████                                                     
   ███░░███ ░░░  ░░███                                                     
  ░███ ░░░  ████  ░███   ██████                                            
 ███████   ░░███  ░███  ███░░███                                           
░░░███░     ░███  ░███ ░███████                                            
  ░███      ░███  ░███ ░███░░░                                             
  █████     █████ █████░░██████                                            
 ░░░░░     ░░░░░ ░░░░░  ░░░░░░                                             
                                                                           
                                ████                                       
                               ░░███                                       
  ██████  █████ █████ ████████  ░███   ██████  ████████   ██████  ████████ 
 ███░░███░░███ ░░███ ░░███░░███ ░███  ███░░███░░███░░███ ███░░███░░███░░███
░███████  ░░░█████░   ░███ ░███ ░███ ░███ ░███ ░███ ░░░ ░███████  ░███ ░░░ 
░███░░░    ███░░░███  ░███ ░███ ░███ ░███ ░███ ░███     ░███░░░   ░███     
░░██████  █████ █████ ░███████  █████░░██████  █████    ░░██████  █████    
 ░░░░░░  ░░░░░ ░░░░░  ░███░░░  ░░░░░  ░░░░░░  ░░░░░      ░░░░░░  ░░░░░     
                      ░███                                                 
                      █████                                                
                     ░░░░░                                                 



    A tree-view of directories and files.

--]]

--[[

    And he shall be like a tree planted by the rivers of water, that bringeth
    forth his fruit in his season; his leaf also shall not wither; and
    whatsoever he doeth shall prosper.
    (Psalms 1:3 KJV)

--]]

return {
	--[[
    Directory browser plugin for Neovim, inspired by Ranger
    --]]

	"simonmclean/triptych.nvim",

	event = "VeryLazy",

	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"nvim-tree/nvim-web-devicons", -- optional
	},

	opts = {},
}
