--[[


          █████               █████                      
         ░░███               ░░███                       
  █████  ███████    ██████   ███████   █████ ████  █████ 
 ███░░  ░░░███░    ░░░░░███ ░░░███░   ░░███ ░███  ███░░  
░░█████   ░███      ███████   ░███     ░███ ░███ ░░█████ 
 ░░░░███  ░███ ███ ███░░███   ░███ ███ ░███ ░███  ░░░░███
 ██████   ░░█████ ░░████████  ░░█████  ░░████████ ██████ 
░░░░░░     ░░░░░   ░░░░░░░░    ░░░░░    ░░░░░░░░ ░░░░░░  
                                                         
 ████   ███                                              
░░███  ░░░                                               
 ░███  ████  ████████    ██████                          
 ░███ ░░███ ░░███░░███  ███░░███                         
 ░███  ░███  ░███ ░███ ░███████                          
 ░███  ░███  ░███ ░███ ░███░░░                           
 █████ █████ ████ █████░░██████                          
░░░░░ ░░░░░ ░░░░ ░░░░░  ░░░░░░                           
                                                         
                                                         
                                                         
    A status line separates windows.

--]]

--[[

    For precept must be upon precept, precept upon precept; line upon line,
    line upon line; here a little, and there a little:
    (Isaiah 28:10 KJV)

--]]

return {
	--[[
    A blazing fast and easy to configure neovim statusline plugin written in
    pure lua.
    --]]

	"nvim-lualine/lualine.nvim",

	dependencies = { "nvim-tree/nvim-web-devicons" },

	opts = { options = { theme = "gruvbox-material" } },
}
