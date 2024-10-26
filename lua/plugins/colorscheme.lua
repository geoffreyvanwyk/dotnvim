--[[



                    ████                                       
                  ░░███                                       
  ██████   ██████  ░███   ██████  ████████                    
 ███░░███ ███░░███ ░███  ███░░███░░███░░███                   
░███ ░░░ ░███ ░███ ░███ ░███ ░███ ░███ ░░░                    
░███  ███░███ ░███ ░███ ░███ ░███ ░███                        
░░██████ ░░██████  █████░░██████  █████                       
 ░░░░░░   ░░░░░░  ░░░░░  ░░░░░░  ░░░░░                        
                                                              
                  █████                                       
                 ░░███                                        
  █████   ██████  ░███████    ██████  █████████████    ██████ 
 ███░░   ███░░███ ░███░░███  ███░░███░░███░░███░░███  ███░░███
░░█████ ░███ ░░░  ░███ ░███ ░███████  ░███ ░███ ░███ ░███████ 
 ░░░░███░███  ███ ░███ ░███ ░███░░░   ░███ ░███ ░███ ░███░░░  
 ██████ ░░██████  ████ █████░░██████  █████░███ █████░░██████ 
░░░░░░   ░░░░░░  ░░░░ ░░░░░  ░░░░░░  ░░░░░ ░░░ ░░░░░  ░░░░░░  
                                                              
                                                                                                                                                                      
                                                                                                         
--]]

--[[

        And the manna was as coriander seed, and the colour thereof as the
        colour of bdellium.
        (Numbers 11:7 KJV)

--]]

return {
    --[[
            Gruvbox Material is a modified version of Gruvbox, the contrast is
            adjusted to be softer in order to protect developers' eyes.  
    --]]
    
	"sainnhe/gruvbox-material",

	priority = 1000,

	init = function()
        vim.g.gruvbox_material_dim_inactive_windows = true
        vim.g.gruvbox_material_enable_bold          = true
        vim.g.gruvbox_material_enable_italic        = true

		vim.cmd.colorscheme 'gruvbox-material'
	end

}
