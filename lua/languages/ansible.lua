--[[



                               ███  █████     ████          
                              ░░░  ░░███     ░░███          
  ██████   ████████    █████  ████  ░███████  ░███   ██████ 
 ░░░░░███ ░░███░░███  ███░░  ░░███  ░███░░███ ░███  ███░░███
  ███████  ░███ ░███ ░░█████  ░███  ░███ ░███ ░███ ░███████ 
 ███░░███  ░███ ░███  ░░░░███ ░███  ░███ ░███ ░███ ░███░░░  
░░████████ ████ █████ ██████  █████ ████████  █████░░██████ 
 ░░░░░░░░ ░░░░ ░░░░░ ░░░░░░  ░░░░░ ░░░░░░░░  ░░░░░  ░░░░░░  
                                                            
                                                            
                                                            
    Ansible is an open source IT automation engine that automates provisioning,
    configuration management, application deployment, orchestration, and many
    other IT processes.

--]]

--[[

    NUN. Thy word is a lamp unto my feet, and a light unto my path. 
    (Psalms 119:105 KJV)

--]]

return {
    { 
        --[[
            Autodetects yaml.ansible file type, and other features.    
        --]]
        
        "mfussenegger/nvim-ansible" 
    },
    {
        'nvim-treesitter/nvim-treesitter',

        optional = true,
        opts     = { ensure_installed = { 'yaml' } },
    },
}	
