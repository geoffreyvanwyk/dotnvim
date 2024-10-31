--[[



              █████  ███   █████     ███                     
             ░░███  ░░░   ░░███     ░░░                      
  ██████   ███████  ████  ███████   ████  ████████    ███████
 ███░░███ ███░░███ ░░███ ░░░███░   ░░███ ░░███░░███  ███░░███
░███████ ░███ ░███  ░███   ░███     ░███  ░███ ░███ ░███ ░███
░███░░░  ░███ ░███  ░███   ░███ ███ ░███  ░███ ░███ ░███ ░███
░░██████ ░░████████ █████  ░░█████  █████ ████ █████░░███████
 ░░░░░░   ░░░░░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███
                                                     ███ ░███
                                                    ░░██████ 
                                                     ░░░░░░  



    To prepare (written material) for publication or presentation, as by
    correcting, revising, or adapting.

--]]

--[[

    And thou shalt write upon the stones all the words of this law very
    plainly.
    (Deuteronomy 27:8 KJV)

--]]

return {
	{
		--[[
        Plugin for splitting or joining blocks of code like arrays,
        hashes, statements, objects, dictionaries, etc.
        --]]

		"Wansmer/treesj",
	},
	{
		--[[
        Plugin for automatically completing punctuation pairs like quotes and
        parentheses.
        --]]

		"windwp/nvim-autopairs",

		event = "InsertEnter",

		-- Optional dependency
		dependencies = { "hrsh7th/nvim-cmp" },

		config = function()
			require("nvim-autopairs").setup({})

			-- If you want to automatically add `(` after selecting a function or method
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
}
