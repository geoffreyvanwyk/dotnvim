--[[



                      █████               
                     ░░███                
 ████████  █████ ████ ░███████  █████ ████
░░███░░███░░███ ░███  ░███░░███░░███ ░███ 
 ░███ ░░░  ░███ ░███  ░███ ░███ ░███ ░███ 
 ░███      ░███ ░███  ░███ ░███ ░███ ░███ 
 █████     ░░████████ ████████  ░░███████ 
░░░░░       ░░░░░░░░ ░░░░░░░░    ░░░░░███ 
                                 ███ ░███ 
                                ░░██████  
                                 ░░░░░░   



    A dynamic, open source programming language with a focus on simplicity and
    productivity. It has an elegant syntax that is natural to read and easy to
    write.

--]]

--[[

    No mention shall be made of coral, or of pearls: for the price of wisdom is
    above rubies.
    (Job 28:18 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,

        opts = {
            ensure_installed = { 'ruby' },

            highlight = { 
                --[[
                    Some languages depend on vim's regex highlighting system
                    (such as Ruby) for indent rules.
                    If you are experiencing weird indenting issues, add the
                    language to the list of additional_vim_regex_highlighting
                    and disabled languages for indent.
                --]]
                additional_vim_regex_highlighting = { 'ruby' }, 
            },

            indent = { disable = { 'ruby' } },
        },
    },
}
