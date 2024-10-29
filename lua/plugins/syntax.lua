--[[



                                █████                         
                               ░░███                          
  █████  █████ ████ ████████   ███████    ██████   █████ █████
 ███░░  ░░███ ░███ ░░███░░███ ░░░███░    ░░░░░███ ░░███ ░░███ 
░░█████  ░███ ░███  ░███ ░███   ░███      ███████  ░░░█████░  
 ░░░░███ ░███ ░███  ░███ ░███   ░███ ███ ███░░███   ███░░░███ 
 ██████  ░░███████  ████ █████  ░░█████ ░░████████ █████ █████
░░░░░░    ░░░░░███ ░░░░ ░░░░░    ░░░░░   ░░░░░░░░ ░░░░░ ░░░░░ 
          ███ ░███                                            
         ░░██████                                             
          ░░░░░░                                              



    Highlight, edit, and navigate code

--]]

--[[

    And an highway shall be there, and a way, and it shall be called The way of
    holiness; the unclean shall not pass over it; but it shall be for those:
    the wayfaring men, though fools, shall not err therein.
    (Isaiah 35:8 KJV)

--]]

return {
    {
        --[[
            The goal of nvim-treesitter is both to provide a simple and easy
            way to use the interface for tree-sitter in Neovim and to provide
            some basic functionality such as highlighting based on it.
        --]]

        'nvim-treesitter/nvim-treesitter',

        build = ':TSUpdate',
        main  = 'nvim-treesitter.configs',  -- Sets main module to use for opts

        opts = {
          auto_install          = true,               -- Autoinstall languages
                                                      -- that are not installed
          highlight             = { enable = true }, 
          incremental_selection = { enable = true },
          indent                = { enable = true },
        },
    },
    {
        --[[
            Shows context of currently visible buffer content. 
        --]]

        'nvim-treesitter/nvim-treesitter-context',
    },
    {
        --[[
            Syntax aware text-objects, select, move, swap, and peek support.
        --]]

        'nvim-treesitter/nvim-treesitter-textobjects',
    },
} 

