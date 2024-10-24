--[[



                     █████     ███                             
                    ░░███     ░░░                              
  ██████  ████████  ███████   ████   ██████  ████████    █████ 
 ███░░███░░███░░███░░░███░   ░░███  ███░░███░░███░░███  ███░░  
░███ ░███ ░███ ░███  ░███     ░███ ░███ ░███ ░███ ░███ ░░█████ 
░███ ░███ ░███ ░███  ░███ ███ ░███ ░███ ░███ ░███ ░███  ░░░░███
░░██████  ░███████   ░░█████  █████░░██████  ████ █████ ██████ 
 ░░░░░░   ░███░░░     ░░░░░  ░░░░░  ░░░░░░  ░░░░ ░░░░░ ░░░░░░  
          ░███                                                 
          █████                                                
         ░░░░░                                                 




	Vim has a number of internal variables and switches which can be set to
	achieve special effects.  These options come in three forms:

		boolean		can only be on or off
		number		has a numeric value
		string		has a string value
--]]

--[[

	Let us choose to us judgment: let us know among ourselves what is good.
	(Job 34:4 KJV)

--]]

-- Print the line number in front of each line. 
vim.opt.number = true

-- Show the line number relative to the line with the cursor in front of each
-- line. To help with jumping.
vim.opt.relativenumber = true

-- Highlight the text line of the cursor. Useful to easily spot the cursor.
vim.opt.cursorline = true

-- Statusline shows the mode.
vim.opt.showmode = false

-- Enable mouse support in all modes.
vim.opt.mouse = 'a'

-- When on, Neovim automatically saves undo history to an undo file when writing a
-- buffer to a file, and restores undo history from the same file on buffer
-- read.
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colorscheme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox-material]])
