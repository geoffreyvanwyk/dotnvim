--[[



 █████                   ██████     ██████                            
░░███                   ███░░███   ███░░███                           
 ░███████  █████ ████  ░███ ░░░   ░███ ░░░   ██████  ████████   █████ 
 ░███░░███░░███ ░███  ███████    ███████    ███░░███░░███░░███ ███░░  
 ░███ ░███ ░███ ░███ ░░░███░    ░░░███░    ░███████  ░███ ░░░ ░░█████ 
 ░███ ░███ ░███ ░███   ░███       ░███     ░███░░░   ░███      ░░░░███
 ████████  ░░████████  █████      █████    ░░██████  █████     ██████ 
░░░░░░░░    ░░░░░░░░  ░░░░░      ░░░░░      ░░░░░░  ░░░░░     ░░░░░░  
                                                                      
                                                                      

   A buffer is the in-memory text of a file.

--]]

--[[

    The memory of the just is blessed: but the name of the wicked shall rot.
    (Proverbs 10:7 KJV)

--]]

return {
    --[[
       A snazzy 💅 buffer line (with tabpage integration) for Neovim built
       using lua.   
    --]]
    
    'akinsho/bufferline.nvim', 

    version = "*", 

    dependencies = 'nvim-tree/nvim-web-devicons',

    opts = {},
}
