--[[



                  ███             █████                        
                 ░░░             ░░███                         
 █████ ███ █████ ████  ████████   ░███████   ██████   ████████ 
░░███ ░███░░███ ░░███ ░░███░░███  ░███░░███ ░░░░░███ ░░███░░███
 ░███ ░███ ░███  ░███  ░███ ░███  ░███ ░███  ███████  ░███ ░░░ 
 ░░███████████   ░███  ░███ ░███  ░███ ░███ ███░░███  ░███     
  ░░████░████    █████ ████ █████ ████████ ░░████████ █████    
   ░░░░ ░░░░    ░░░░░ ░░░░ ░░░░░ ░░░░░░░░   ░░░░░░░░ ░░░░░     
                                                               
                                                               
                                                               
    The window bar is a bar that's shown at the top of every window with it
    enabled.

--]]

--[[

    But what things were gain to me, those I counted loss for Christ. Yea
    doubtless, and I count all things but loss for the excellency of the
    knowledge of Christ Jesus my Lord: for whom I have suffered the loss of all
    things, and do count them but dung, that I may win Christ,
    (Philippians 3:7-8 KJV)

--]]

return {
	--[[
    Visual Studio Code inspired breadcrumbs plugin for the Neovim editor   
    --]]

	"utilyre/barbecue.nvim",

	name = "barbecue",

	version = "*",

	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},

	opts = {},
}
