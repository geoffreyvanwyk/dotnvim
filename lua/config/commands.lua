--[[



                                                                            █████        
                                                                           ░░███         
  ██████   ██████  █████████████   █████████████    ██████   ████████    ███████   █████ 
 ███░░███ ███░░███░░███░░███░░███ ░░███░░███░░███  ░░░░░███ ░░███░░███  ███░░███  ███░░  
░███ ░░░ ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███   ███████  ░███ ░███ ░███ ░███ ░░█████ 
░███  ███░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███  ███░░███  ░███ ░███ ░███ ░███  ░░░░███
░░██████ ░░██████  █████░███ █████ █████░███ █████░░████████ ████ █████░░████████ ██████ 
 ░░░░░░   ░░░░░░  ░░░░░ ░░░ ░░░░░ ░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░░░ ░░░░░░  
                                                                                         
                                                                                         

	It is possible to define your own Ex commands. All user defined
	commands must start with an uppercase letter, to avoid confusion with
	builtin commands.

--]]

--[[

	Doth the eagle mount up at thy command, and make her nest on high?
	(Job 39:27 KJV)

--]]


vim.api.nvim_create_user_command(
    'DiffOrig', 
    'vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis',
    {
        desc = "In a modified buffer, see the differences with the file it was loaded from."
    }  
)


