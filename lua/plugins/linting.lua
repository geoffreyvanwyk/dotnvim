--[[



 ████   ███              █████     ███                     
░░███  ░░░              ░░███     ░░░                      
 ░███  ████  ████████   ███████   ████  ████████    ███████
 ░███ ░░███ ░░███░░███ ░░░███░   ░░███ ░░███░░███  ███░░███
 ░███  ░███  ░███ ░███   ░███     ░███  ░███ ░███ ░███ ░███
 ░███  ░███  ░███ ░███   ░███ ███ ░███  ░███ ░███ ░███ ░███
 █████ █████ ████ █████  ░░█████  █████ ████ █████░░███████
░░░░░ ░░░░░ ░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███
                                                   ███ ░███
                                                  ░░██████ 
                                                   ░░░░░░  



    Lint was the name originally given to a particular program that flagged some
    suspicious and non-portable constructs (likely to be bugs) in C language source
    code. The term is now applied generically to tools that flag suspicious usage
    in software written in any computer language.

--]]

--[[

    Purge me with hyssop, and I shall be clean: wash me, and I shall be whiter
    than snow.
    (Psalms 51:7 KJV)

--]]

return {
	{
		--[[
        An asynchronous linter plugin for Neovim complementary to the built-in
        Language Server Protocol support.
        --]]

		"mfussenegger/nvim-lint",

		event = { "BufReadPre", "BufNewFile" },

		config = function()
			require("config.autocommands").autocmds_for_linting()
		end,
	},
}
