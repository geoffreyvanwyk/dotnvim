--[[



               ███                                    
             ░░░                                     
 █████ █████ ████  █████████████                     
░░███ ░░███ ░░███ ░░███░░███░░███                    
 ░███  ░███  ░███  ░███ ░███ ░███                    
 ░░███ ███   ░███  ░███ ░███ ░███                    
  ░░█████    █████ █████░███ █████                   
   ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░                    
                                                     
                             ███             █████   
                            ░░░             ░░███    
  █████   ██████  ████████  ████  ████████  ███████  
 ███░░   ███░░███░░███░░███░░███ ░░███░░███░░░███░   
░░█████ ░███ ░░░  ░███ ░░░  ░███  ░███ ░███  ░███    
 ░░░░███░███  ███ ░███      ░███  ░███ ░███  ░███ ███
 ██████ ░░██████  █████     █████ ░███████   ░░█████ 
░░░░░░   ░░░░░░  ░░░░░     ░░░░░  ░███░░░     ░░░░░  
                                  ░███               
                                  █████              
                                 ░░░░░                                                             



    Language for configuring and extending Vim and Neovim.

--]]

--[[

    For thus saith the LORD, Behold, I will extend peace to her like a river,
    and the glory of the Gentiles like a flowing stream: then shall ye suck, ye
    shall be borne upon her sides, and be dandled upon her knees.
    (Isaiah 66:12 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'vim', 'vimdoc' } },
    },
}
