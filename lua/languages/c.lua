--[[



  ██████ 
 ███░░███
░███ ░░░ 
░███  ███
░░██████ 
 ░░░░░░  
                                               


    The [C] programming language

--]]

--[[

    He shall have dominion also from sea to sea, and from the river unto the
    ends of the earth.
    (Psalms 72:8 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'c' } },
    },
}
