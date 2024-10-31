--[[



                       █████                                                             
                      ░░███                                                              
  ██████   █████ ████ ███████    ██████                                                  
 ░░░░░███ ░░███ ░███ ░░░███░    ███░░███                                                 
  ███████  ░███ ░███   ░███    ░███ ░███                                                 
 ███░░███  ░███ ░███   ░███ ███░███ ░███                                                 
░░████████ ░░████████  ░░█████ ░░██████                                                  
 ░░░░░░░░   ░░░░░░░░    ░░░░░   ░░░░░░                                                   
                                                                                         
                                                                                         
                                                                                         
                                                                            █████        
                                                                           ░░███         
  ██████   ██████  █████████████   █████████████    ██████   ████████    ███████   █████ 
 ███░░███ ███░░███░░███░░███░░███ ░░███░░███░░███  ░░░░░███ ░░███░░███  ███░░███  ███░░  
░███ ░░░ ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███   ███████  ░███ ░███ ░███ ░███ ░░█████ 
░███  ███░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███  ███░░███  ░███ ░███ ░███ ░███  ░░░░███
░░██████ ░░██████  █████░███ █████ █████░███ █████░░████████ ████ █████░░████████ ██████ 
 ░░░░░░   ░░░░░░  ░░░░░ ░░░ ░░░░░ ░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░░░ ░░░░░░  
                                                                                         
                                                                                         

	You can specify commands to be executed automatically when reading or writing
	a file, when entering or leaving a buffer or window, and when exiting Vim.

--]]

--[[

	Yet the LORD will command his lovingkindness in the daytime, and in the
	night his song shall be with me, and my prayer unto the God of my life.
	(Psalms 42:8 KJV)
	
--]]

local M = {}

---- LANGUAGE SERVER PROTOCOL -------------------------------------------------

M.autocmds_for_lsp = function()
	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("geoffreyvanwyk-lsp-attach", { clear = true }),

		desc = [[ When file, associated with an LSP server, is opened, the callback 
              function is executed to configure the current buffer. ]],

		callback = function(event)
			require("config.mappings").leader_mappings_for_code(event)
			require("config.mappings").mappings_for_goto_code(event)

			-- The following two autocommands are used to highlight references of the
			-- word under your cursor when your cursor rests there for a little while.
			--    See `:help CursorHold` for information about when this is executed
			--
			-- When you move your cursor, the highlights will be cleared (the second autocommand).
			local client = vim.lsp.get_client_by_id(event.data.client_id)
			if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
				local highlight_augroup = vim.api.nvim_create_augroup("geoffreyvanwyk-lsp-highlight", { clear = false })
				vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
					buffer = event.buf,
					group = highlight_augroup,
					callback = vim.lsp.buf.document_highlight,
				})

				vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
					buffer = event.buf,
					group = highlight_augroup,
					callback = vim.lsp.buf.clear_references,
				})

				vim.api.nvim_create_autocmd("LspDetach", {
					group = vim.api.nvim_create_augroup("geoffreyvanwyk-lsp-detach", { clear = true }),
					callback = function(event2)
						vim.lsp.buf.clear_references()
						vim.api.nvim_clear_autocmds({ group = "geoffreyvanwyk-lsp-highlight", buffer = event2.buf })
					end,
				})
			end

			-- The following code creates a keymap to toggle inlay hints in your
			-- code, if the language server you are using supports them
			--
			-- This may be unwanted, since they displace some of your code
			if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
				require("config.mappings").mappings_for_inlay_hints(event)
			end
		end,
	})
end

return M
