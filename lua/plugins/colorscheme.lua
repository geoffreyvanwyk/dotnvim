return {
	"sainnhe/gruvbox-material",
	priority = 1000,
	init = function()
        vim.g.gruvbox_material_dim_inactive_windows = true
        vim.g.gruvbox_material_enable_bold          = true
        vim.g.gruvbox_material_enable_italic        = true

		vim.cmd.colorscheme 'gruvbox-material'
	end

}
