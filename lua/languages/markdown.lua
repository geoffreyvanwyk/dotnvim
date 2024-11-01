--[[



                                      █████     
                                    ░░███      
 █████████████    ██████   ████████  ░███ █████
░░███░░███░░███  ░░░░░███ ░░███░░███ ░███░░███ 
 ░███ ░███ ░███   ███████  ░███ ░░░  ░██████░  
 ░███ ░███ ░███  ███░░███  ░███      ░███░░███ 
 █████░███ █████░░████████ █████     ████ █████
░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░░     ░░░░ ░░░░░ 
                                               
     █████                                     
    ░░███                                      
  ███████   ██████  █████ ███ █████ ████████   
 ███░░███  ███░░███░░███ ░███░░███ ░░███░░███  
░███ ░███ ░███ ░███ ░███ ░███ ░███  ░███ ░███  
░███ ░███ ░███ ░███ ░░███████████   ░███ ░███  
░░████████░░██████   ░░████░████    ████ █████ 
 ░░░░░░░░  ░░░░░░     ░░░░ ░░░░    ░░░░ ░░░░░  
                                               


    Markdown is a lightweight markup language for creating formatted text using
    a plain-text editor.

--]]

--[[

    And it shall be, when he lieth down, that thou shalt mark the place where
    he shall lie, and thou shalt go in, and uncover his feet, and lay thee
    down; and he will tell thee what thou shalt do.
    (Ruth 3:4 KJV)

--]]

return {
	{
		"nvim-treesitter/nvim-treesitter",

		opts = { ensure_installed = { "markdown", "markdown_inline" } },
	},
}
