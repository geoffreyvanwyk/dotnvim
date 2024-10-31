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

--[[

    Howbeit we speak wisdom among them that are perfect: yet not the wisdom of this
    world, nor of the princes of this world, that come to nought:
    (1 Corinthians 2:6 KJV)

--]]

return {
	--[[
        helps you remember your Neovim keymaps, by showing available keybindings in
        a popup as you type.
    --]]

	"folke/which-key.nvim",

	event = "VeryLazy",

	opts = { preset = "modern" },
}
