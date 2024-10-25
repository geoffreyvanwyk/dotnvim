--[[



 ██████   ██████                                ███                             
░░██████ ██████                                ░░░                              
 ░███░█████░███   ██████   ████████  ████████  ████  ████████    ███████  █████ 
 ░███░░███ ░███  ░░░░░███ ░░███░░███░░███░░███░░███ ░░███░░███  ███░░███ ███░░  
 ░███ ░░░  ░███   ███████  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███░░█████ 
 ░███      ░███  ███░░███  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███ ░░░░███
 █████     █████░░████████ ░███████  ░███████  █████ ████ █████░░███████ ██████ 
░░░░░     ░░░░░  ░░░░░░░░  ░███░░░   ░███░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███░░░░░░  
                           ░███      ░███                       ███ ░███        
                           █████     █████                     ░░██████         
                          ░░░░░     ░░░░░                       ░░░░░░          


	
	Key mapping is used to change the meaning of typed keys.
--]]

--[[

	The steps of a good man are ordered by the LORD: and he delighteth in his way.
	(Psalms 37:23 KJV)

--]]


--[[ WhichKey Groups ]]--

require("which-key").add({
	{ "<leader>b", group = "[B]uffers", expand = function() return require("which-key.extras").expand.buf() end },
	{ "<leader>f", group = "[F]iles" },
	{ "<leader>w", group = "[W]indows",  proxy = "<c-w>" },
})

--[[ Buffers ]]--

vim.keymap.set('n', '<leader>bn', ':bnext<enter>', { desc = '[B]uffer [N]ext'     })
vim.keymap.set('n', '<leader>bp', ':bprev<enter>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bd', ':bdel<enter>',  { desc = '[B]uffer [D]elete'   })

--[[ Files ]]--

vim.keymap.set('n', '<leader>fe', ':Triptych<enter>', { desc = '[F]ile [E]xplorer' })
