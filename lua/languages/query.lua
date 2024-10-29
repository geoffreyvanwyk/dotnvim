--[[

                                                    
                                                   
  ████████ █████ ████  ██████  ████████  █████ ████
 ███░░███ ░░███ ░███  ███░░███░░███░░███░░███ ░███ 
░███ ░███  ░███ ░███ ░███████  ░███ ░░░  ░███ ░███ 
░███ ░███  ░███ ░███ ░███░░░   ░███      ░███ ░███ 
░░███████  ░░████████░░██████  █████     ░░███████ 
 ░░░░░███   ░░░░░░░░  ░░░░░░  ░░░░░       ░░░░░███ 
     ░███                                 ███ ░███ 
     █████                               ░░██████  
    ░░░░░                                 ░░░░░░                                                 



   Grammar for Tree-sitter queries 

--]]

--[[

    And when Jesus saw that he answered discreetly, he said unto him, Thou art
    not far from the kingdom of God. And no man after that durst ask him any
    question.
    (Mark 12:34 KJV)

--]]

return {
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'query' } },
    },
}
