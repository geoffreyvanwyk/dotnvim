--[[



 ████                                 
░░███                                 
 ░███   ██████    █████████ █████ ████
 ░███  ░░░░░███  ░█░░░░███ ░░███ ░███ 
 ░███   ███████  ░   ███░   ░███ ░███ 
 ░███  ███░░███    ███░   █ ░███ ░███ 
 █████░░████████  █████████ ░░███████ 
░░░░░  ░░░░░░░░  ░░░░░░░░░   ░░░░░███ 
                             ███ ░███ 
                            ░░██████  
                             ░░░░░░   



	lazy.nvim is a modern plugin manager for Neovim.
--]]

--[[

	How long wilt thou sleep, O sluggard? when wilt thou arise out of thy
	sleep? Yet a little sleep, a little slumber, a little folding of the
	hands to sleep: So shall thy poverty come as one that travelleth, and
	thy want as an armed man.
	(Proverbs 6:9-11 KJV)

--]]

---- Setup --------------------------------------------------------------------

require("lazy").setup({
  spec = {
    { import = "plugins"   },
    { import = "languages" },
  },

  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "gruvbox-material" } },

  -- automatically check for plugin updates
  checker = { enabled = true },
})
