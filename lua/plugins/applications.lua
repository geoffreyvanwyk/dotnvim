--[[

                                      
                                      
  ██████   ████████  ████████   █████ 
 ░░░░░███ ░░███░░███░░███░░███ ███░░  
  ███████  ░███ ░███ ░███ ░███░░█████ 
 ███░░███  ░███ ░███ ░███ ░███ ░░░░███
░░████████ ░███████  ░███████  ██████ 
 ░░░░░░░░  ░███░░░   ░███░░░  ░░░░░░  
           ░███      ░███             
           █████     █████            
          ░░░░░     ░░░░░             


    Using Neovim as a client.

--]]

--[[

    So hast thou also them that hold the doctrine of the Nicolaitans, which
    thing I hate.
    (Revelation 2:15 KJV)

--]]

return {
	---- DATABASE -------------------------------------------------------------

	{
		--[[
        User interface for vim-dadbod.
        --]]

		"kristijanhusak/vim-dadbod-ui",

		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },

			{
				"kristijanhusak/vim-dadbod-completion",

				ft = { "sql", "mysql", "plsql" },

				lazy = true,
			}, -- Optional
		},

		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},

		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
}
