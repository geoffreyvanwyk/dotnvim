--[[



                                                ███                             
                                               ░░░                              
 █████████████    ██████   ████████  ████████  ████  ████████    ███████  █████ 
░░███░░███░░███  ░░░░░███ ░░███░░███░░███░░███░░███ ░░███░░███  ███░░███ ███░░  
 ░███ ░███ ░███   ███████  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███░░█████ 
 ░███ ░███ ░███  ███░░███  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███ ░░░░███
 █████░███ █████░░████████ ░███████  ░███████  █████ ████ █████░░███████ ██████ 
░░░░░ ░░░ ░░░░░  ░░░░░░░░  ░███░░░   ░███░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███░░░░░░  
                           ░███      ░███                       ███ ░███        
                           █████     █████                     ░░██████         
                          ░░░░░     ░░░░░                       ░░░░░░          



	Key mapping is used to change the meaning of typed keys.

--]]

return {
    --[[
        helps you remember your Neovim keymaps, by showing available keybindings in
        a popup as you type.
    --]]
    
    "folke/which-key.nvim",

    event = "VeryLazy",

    opts = {
        preset = "modern",
    },

    keys = {
        {
            "<leader>?",

            function()
                require("which-key").show({ global = false })
            end,

            desc = "Buffer Local",
        },
    },
}
