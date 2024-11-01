--[[



                                         ███                     
                                        ░░░                      
 █████ █████  ██████  ████████   █████  ████   ██████  ████████  
░░███ ░░███  ███░░███░░███░░███ ███░░  ░░███  ███░░███░░███░░███ 
 ░███  ░███ ░███████  ░███ ░░░ ░░█████  ░███ ░███ ░███ ░███ ░███ 
 ░░███ ███  ░███░░░   ░███      ░░░░███ ░███ ░███ ░███ ░███ ░███ 
  ░░█████   ░░██████  █████     ██████  █████░░██████  ████ █████
   ░░░░░     ░░░░░░  ░░░░░     ░░░░░░  ░░░░░  ░░░░░░  ░░░░ ░░░░░ 
                                                                 
                               █████                       ████  
                              ░░███                       ░░███  
  ██████   ██████  ████████   ███████   ████████   ██████  ░███  
 ███░░███ ███░░███░░███░░███ ░░░███░   ░░███░░███ ███░░███ ░███  
░███ ░░░ ░███ ░███ ░███ ░███   ░███     ░███ ░░░ ░███ ░███ ░███  
░███  ███░███ ░███ ░███ ░███   ░███ ███ ░███     ░███ ░███ ░███  
░░██████ ░░██████  ████ █████  ░░█████  █████    ░░██████  █████ 
 ░░░░░░   ░░░░░░  ░░░░ ░░░░░    ░░░░░  ░░░░░      ░░░░░░  ░░░░░  
                                                                 
                                                                 
                                                                 
     The practice of tracking and managing changes to software code.

--]]

--[[

    Behold, I shew you a mystery; We shall not all sleep, but we shall all be
    changed,
    (1 Corinthians 15:51 KJV)

--]]

return {
	{
		--[[
        Git integration for buffers
        --]]

		"lewis6991/gitsigns.nvim",

		opts = {
			on_attach = function(bufnr)
				require("config.mappings").mappings_for_diff_navigation(bufnr)
				require("config.mappings").leader_mappings_for_diff_actions(bufnr)
				require("config.mappings").leader_mappings_for_diff_toggles(bufnr)
			end,
		},
	},
}
