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

	Go to the ant, thou sluggard; consider her ways, and be wise: Which
	having no guide, overseer, or ruler, Provideth her meat in the summer,
	and gathereth her food in the harvest.
	(Proverbs 6:6-8 KJV)

--]]

---- Bootstrap ---------------------------------------------------------------- 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  local out = vim.fn.system({ 
	  "git", 
	  "clone", 
	  "--filter=blob:none", 
	  "--branch=stable", 
	  lazyrepo, 
	  lazypath,
  })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})

    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.runtimepath:prepend(lazypath)

