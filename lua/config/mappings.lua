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

	The steps of a good man are ordered by the LORD: and he delighteth in
	his way.
	(Psalms 37:23 KJV)

--]]


---- WHICHKEY GROUPS ----------------------------------------------------------

require("which-key").add({
	{ 
        "<leader>b", 
        group = "[B]uffers", 
        expand = function()
            return require("which-key.extras").expand.buf()
        end 
    },
	{ "<leader>e", group = "[E]diting" },
	{ "<leader>f", group = "[F]iles" },
	{ "<leader>w", group = "[W]indows", proxy = "<c-w>" },
})

---- BUFFERS ------------------------------------------------------------------

vim.keymap.set(
    'n',
    '<leader>bn',
    ':bfirst<enter>',
    { desc = '[B]uffer [F]irst' }
)
vim.keymap.set(
    'n',
    '<leader>bn',
    ':blast<enter>',
    { desc = '[B]uffer [L]ast' }
)
vim.keymap.set(
    'n',
    '<leader>bn',
    ':bnext<enter>',
    { desc = '[B]uffer [N]ext' }
)
vim.keymap.set(
    'n',
    '<leader>bp',
    ':bprevious<enter>',
    { desc = '[B]uffer [P]revious' }
)
vim.keymap.set(
    'n',
    '<leader>bd',
    ':bdelete<enter>',
    { desc = '[B]uffer [D]elete' }
)

---- EDITING ------------------------------------------------------------------

vim.keymap.set(
    'n',
    '<leader>es',
    ':TSJSplit<enter>',
    { desc = '[E]dit [S]plit Code Block' }
)
vim.keymap.set(
    'n',
    '<leader>ej',
    ':TSJJoin<enter>',
    { desc = '[E]dit [J]oin Code Block' }
)

---- FILES --------------------------------------------------------------------

vim.keymap.set(
    'n',
    '<leader>fe',
    ':Triptych<enter>',
    { desc = '[F]ile [E]xplorer' }
)
