--[[



                                           ███                 
                                          ░░░                  
 ████████    ██████   ██████  █████ █████ ████  █████████████  
░░███░░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███ 
 ░███ ░███ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███ 
 ░███ ░███ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███ 
 ████ █████░░██████ ░░██████   ░░█████    █████ █████░███ █████
░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ 
                                                               

		Banners created with: 
			https://manytools.org/hacker-tools/ascii-banner/ 
		using font: 
			DOS Rebel
                                                               
--]]

--[[

	Oh that my words were now written! oh that they were printed in a book!
	(Job 19:23 KJV)

--]]

-- Vim has a number of internal variables and switches which can be set to
-- achieve special effects.
require('config.options')

-- Key mapping is used to change the meaning of typed keys.
require('config.mappings')

-- It is possible to define your own Ex commands. 
require('config.commands')

-- You can specify commands to be executed automatically when reading or
-- writing a file, when entering or leaving a buffer or window, and when
-- exiting Vim.
require('config.autocommands')

-- lazy.nvim is a modern plugin manager for Neovim.
require('config.lazy')
	
