--[[



      █████  ███     ██████     ██████ 
    ░░███  ░░░     ███░░███   ███░░███
  ███████  ████   ░███ ░░░   ░███ ░░░ 
 ███░░███ ░░███  ███████    ███████   
░███ ░███  ░███ ░░░███░    ░░░███░    
░███ ░███  ░███   ░███       ░███     
░░████████ █████  █████      █████    
 ░░░░░░░░ ░░░░░  ░░░░░      ░░░░░     
                                      
                                      
                                                                                    
    Output of `diff` command that compares files line-by-line.

--]]

--[[

    For who maketh thee to differ from another? and what hast thou that thou
    didst not receive? now if thou didst receive it, why dost thou glory, as if
    thou hadst not received it?
    (1 Corinthians 4:7 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'diff' } },
    },
}
