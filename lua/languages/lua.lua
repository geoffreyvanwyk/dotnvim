--[[



 ████                      
░░███                      
 ░███  █████ ████  ██████  
 ░███ ░░███ ░███  ░░░░░███ 
 ░███  ░███ ░███   ███████ 
 ░███  ░███ ░███  ███░░███ 
 █████ ░░████████░░████████
░░░░░   ░░░░░░░░  ░░░░░░░░ 



    Lua is a powerful, efficient, lightweight, embeddable scripting language.

--]]

--[[

    And he dreamed yet another dream, and told it his brethren, and said,
    Behold, I have dreamed a dream more; and, behold, the sun and the moon and
    the eleven stars made obeisance to me.
    (Genesis 37:9 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'lua', 'luadoc' } },
    },
}
