--[[



                                                                                     
                                                                                     
 █████ ████  █████   ██████  ████████                                                
░░███ ░███  ███░░   ███░░███░░███░░███                                               
 ░███ ░███ ░░█████ ░███████  ░███ ░░░                                                
 ░███ ░███  ░░░░███░███░░░   ░███                                                    
 ░░████████ ██████ ░░██████  █████                                                   
  ░░░░░░░░ ░░░░░░   ░░░░░░  ░░░░░                                                    
                                                                                     
  ███              █████                          ██████                             
 ░░░              ░░███                          ███░░███                            
 ████  ████████   ███████    ██████  ████████   ░███ ░░░   ██████    ██████   ██████ 
░░███ ░░███░░███ ░░░███░    ███░░███░░███░░███ ███████    ░░░░░███  ███░░███ ███░░███
 ░███  ░███ ░███   ░███    ░███████  ░███ ░░░ ░░░███░      ███████ ░███ ░░░ ░███████ 
 ░███  ░███ ░███   ░███ ███░███░░░   ░███       ░███      ███░░███ ░███  ███░███░░░  
 █████ ████ █████  ░░█████ ░░██████  █████      █████    ░░████████░░██████ ░░██████ 
░░░░░ ░░░░ ░░░░░    ░░░░░   ░░░░░░  ░░░░░      ░░░░░      ░░░░░░░░  ░░░░░░   ░░░░░░  
                                                                                     
                                                                                     
                                                                                     
     A user interface (UI) is the space where interactions between humans and
     machines occur. 

--]]

--[[

    In the sweat of thy face shalt thou eat bread, till thou return unto the
    ground; for out of it wast thou taken: for dust thou art, and unto dust
    shalt thou return.
    (Genesis 3:19 KJV)

--]]

return {
	--[[
    💥 Highly experimental plugin that completely replaces the UI for messages,
    cmdline and the popupmenu.
    --]]

	"folke/noice.nvim",

	event = "VeryLazy",

	opts = {},

	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}
