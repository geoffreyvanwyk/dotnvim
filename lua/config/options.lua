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

-- stylua: ignore start

---- (2) MOVING AROUND, SEARCHING & PATTERNS ----------------------------------

vim.opt.ignorecase = true  -- ignore case when using a search pattern
vim.opt.smartcase  = true  -- override 'ignorecase' when pattern has upper case
                           -- characters

---- (4) DISPLAYING TEXT ------------------------------------------------------

vim.opt.wrap           = false  -- long lines wrap
vim.opt.number         = true   -- show the line number for each line
vim.opt.relativenumber = true   -- show the relative line number for each line
                                -- makes it easier to jump from line to line

---- (5) SYNTAX, HIGHLIGHTING & SPELLING --------------------------------------

vim.opt.background    = "dark"  -- "dark" or "light"; the background color
                                -- brightness
vim.opt.cursorline    = true    -- highlight the screen line of the cursor
vim.opt.termguicolors = true    -- use GUI colors for the terminal

---- (9) USING THE MOUSE ------------------------------------------------------

vim.opt.mouse = "a"  -- list of flags for using the mouse
                     -- enable mouse support in all modes

---- (10) MESSAGES & INFO -----------------------------------------------------

vim.opt.showmode = false  -- display the current mode below the statusline
                          -- not necessary because statusline shows mode

---- (11) SELECTING TEXT ------------------------------------------------------

-- Schedule setting of options after `UiEnter` event in-case they might
-- increase start-up time.
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"  -- "unnamed" to use the * register like unnamed register
	                                 -- "autoselect" to always put selected text on the clipboard
                                     -- "unnamedplus" to synchronize + register with system clipboard
end)

---- (12) EDITING TEXT --------------------------------------------------------

vim.opt.undofile = true  -- automatically save and restore undo history

---- (13) TABS & INDENTING ----------------------------------------------------

vim.opt.smartindent = true  -- do clever autoindenting
vim.opt.expandtab   = true  -- expand <Tab> to spaces in Insert mode
vim.opt.softtabstop = 4     -- if non-zero, number of spaces to insert for a
                            -- <Tab>
vim.opt.tabstop     = 4     -- number of spaces a <Tab> in the text stands for
vim.opt.shiftwidth  = 4     -- number of spaces for each step of (auto)indent
