--[[



  █████       █████                    ████ 
░░███       ░░███                    ░░███ 
 ░███████   ███████   █████████████   ░███ 
 ░███░░███ ░░░███░   ░░███░░███░░███  ░███ 
 ░███ ░███   ░███     ░███ ░███ ░███  ░███ 
 ░███ ░███   ░███ ███ ░███ ░███ ░███  ░███ 
 ████ █████  ░░█████  █████░███ █████ █████
░░░░ ░░░░░    ░░░░░  ░░░░░ ░░░ ░░░░░ ░░░░░ 
                                           
                                           
                                                                                         
    [H]yper[T]ext [M]ark-up [L]angauge

--]]

--[[

    And the LORD said unto him, Therefore whosoever slayeth Cain, vengeance
    shall be taken on him sevenfold. And the LORD set a mark upon Cain, lest
    any finding him should kill him.
    (Genesis 4:15 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'html' } },
    },
}
