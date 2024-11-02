--[[



                                                ███                             
                                               ░░░                              
 █████████████    ██████   ████████  ████████  ████  ████████    ███████  █████ 
░░███░░███░░███  ░░░░░███ ░░███░░███░░███░░███░░███ ░░███░░███  ███░░███ ███░░  
 ░███ ░███ ░███   ███████  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███░░█████ 
 ░███ ░███ ░███  ███░░███  ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███ ░███ ░░░░███
 █████░███ █████░░████████ ░███████  ░███████  █████ ████ █████░░███████ ██████ 
░░░░░ ░░░ ░░░░░  ░░░░░░░░  ░███░░░   ░███░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░███░░░░░░  
                           ░███      ░███                       ███ ░███        
                           █████     █████                     ░░██████         
                          ░░░░░     ░░░░░                       ░░░░░░          


	
	Key mapping is used to change the meaning of typed keys.

--]]

--[[

	The steps of a good man are ordered by the LORD: and he delighteth in
	his way.
	(Psalms 37:23 KJV)

--]]

local M = {}

---- <leader> -----------------------------------------------------------------

vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Mappings" })

vim.keymap.set("n", "<leader>/", function()
	local builtin = require("telescope.builtin")
	local themes = require("telescope.themes")

	builtin.current_buffer_fuzzy_find(themes.get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "Fuzzy Search" })

-------- WHICHKEY GROUPS ------------------------------------------------------

require("which-key").add({
	{
		"<leader>b",
		group = "Buffers",
		expand = function()
			return require("which-key.extras").expand.buf()
		end,
	},
	{ "<leader>c", group = "Code" },
	{ "<leader>e", group = "Edit" },
	{ "<leader>f", group = "Files" },
	{ "<leader>h", group = "Diff Hunks" },
	{ "<leader>s", group = "Search" },
	{ "<leader>t", group = "Toggle" },
	{ "<leader>w", group = "Windows", proxy = "<c-w>" },
})

-------- BUFFERS --------------------------------------------------------------

vim.keymap.set("n", "<leader><leader>", require("telescope.builtin").buffers, { desc = "Find Buffer" })

vim.keymap.set("n", "<leader>bf", ":bfirst<enter>", { desc = "First" })
vim.keymap.set("n", "<leader>bl", ":blast<enter>", { desc = "Last" })

vim.keymap.set("n", "<leader>bn", ":bnext<enter>", { desc = "Next" })
vim.keymap.set("n", "<leader>bm", ":bmodified<enter>", { desc = "Next Modified" })
vim.keymap.set("n", "<leader>bp", ":bprevious<enter>", { desc = "Previous" })

vim.keymap.set("n", "<leader>bd", ":bdelete<enter>", { desc = "Delete" })
vim.keymap.set("n", "<leader>bD", ":%bdelete<enter>", { desc = "Delete All" })

require("which-key").add({ { "<leader>be", group = "Empty Buffer" } })
vim.keymap.set("n", "<leader>bee", ":enew<enter>", { desc = "Current Window" })
vim.keymap.set("n", "<leader>bev", ":vnew<enter>", { desc = "Vertical Split" })

-------- CODE -----------------------------------------------------------------

M.leader_mappings_for_code = function(event)
	local map = function(keys, func, desc, mode)
		mode = mode or "n"
		vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
	end

	-- Execute a code action, usually your cursor needs to be on top of an error
	-- or a suggestion from your LSP for this to activate.
	map("<leader>ca", vim.lsp.buf.code_action, "Actions", { "n", "x" })

	-- Jump to the implementation of the word under your cursor.
	--  Useful when your language has ways of declaring types without an actual implementation.
	map("<leader>ci", require("telescope.builtin").lsp_implementations, "Implementation")

	-- Rename the variable under your cursor.
	--  Most Language Servers support renaming across files, etc.
	map("<leader>cr", vim.lsp.buf.rename, "Rename Symbol")

	require("which-key").add({ { "cs", group = "Symbols" } })

	-- Fuzzy find all the symbols in your current buffer.
	--  Symbols are things like variables, functions, types, etc.
	map("<leader>csb", require("telescope.builtin").lsp_document_symbols, "In Buffer")

	-- Fuzzy find all the symbols in your current workspace.
	--  Similar to document symbols, except searches over your entire project.
	map("<leader>csw", require("telescope.builtin").lsp_dynamic_workspace_symbols, "In Workspace")

	-- Jump to the type of the word under your cursor.
	--  Useful when you're not sure what type a variable is and you want to see
	--  the definition of its *type*, not where it was *defined*.
	map("<leader>ct", require("telescope.builtin").lsp_type_definitions, "Type Definition")

	-- Find references for the word under your cursor.
	map("<leader>cR", require("telescope.builtin").lsp_references, "References")
end

-------- DIFF -----------------------------------------------------------------

M.leader_mappings_for_diff_actions = function(bufnr)
	local gitsigns = require("gitsigns")

	local function map(mode, l, r, opts)
		opts = opts or {}
		opts.buffer = bufnr
		vim.keymap.set(mode, l, r, opts)
	end

	-- Actions
	-- visual mode
	map("v", "<leader>hs", function()
		gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
	end, { desc = "stage git hunk" })
	map("v", "<leader>hr", function()
		gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
	end, { desc = "reset git hunk" })
	-- normal mode
	map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "git [s]tage hunk" })
	map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "git [r]eset hunk" })
	map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "git [S]tage buffer" })
	map("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "git [u]ndo stage hunk" })
	map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "git [R]eset buffer" })
	map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "git [p]review hunk" })
	map("n", "<leader>hb", gitsigns.blame_line, { desc = "git [b]lame line" })
	map("n", "<leader>hd", gitsigns.diffthis, { desc = "git [d]iff against index" })
	map("n", "<leader>hD", function()
		gitsigns.diffthis("@")
	end, { desc = "git [D]iff against last commit" })
end

-------- EDIT -----------------------------------------------------------------

vim.keymap.set("n", "<leader>es", ":TSJSplit<enter>", { desc = "Split Code Block" })
vim.keymap.set("n", "<leader>ej", ":TSJJoin<enter>", { desc = "Join Code Block" })
vim.keymap.set("n", "<leader>ef", function()
	require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format Buffer" })

-------- FILES ----------------------------------------------------------------

vim.keymap.set("n", "<leader>fe", ":Triptych<enter>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find" })
vim.keymap.set("n", "<leader>f.", require("telescope.builtin").oldfiles, { desc = 'Recent ("." for repeat)' })

vim.keymap.set("n", "<leader>fn", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Neovim files" })

-------- SEARCH ---------------------------------------------------------------

vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "Help" })
vim.keymap.set("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>ss", require("telescope.builtin").builtin, { desc = "Select Telescope" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "Current Word" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "By Grep" })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set("n", "<leader>s/", function()
	require("telescope.builtin").live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "In Open Files" })

vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { desc = "Resume" })

-------- TOGGLE ---------------------------------------------------------------

M.leader_mappings_for_inlay_hints = function(event)
	vim.keymap.set("n", "<leader>th", function()
		vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
	end, {
		buffer = event.buf,
		desc = "LSP: " .. "Inlay Hints",
	})
end

M.leader_mappings_for_diff_toggles = function(bufnr)
	vim.keymap.set(
		"n",
		"<leader>tb",
		require("gitsigns").toggle_current_line_blame,
		{ desc = "git show [b]lame line", buffer = bufnr }
	)
	vim.keymap.set(
		"n",
		"<leader>tD",
		require("gitsigns").toggle_deleted,
		{ desc = "git show [D]eleted", buffer = bufnr }
	)
end

-------- DIFF -----------------------------------------------------------------

M.mappings_for_diff_navigation = function(bufnr)
	vim.keymap.set("n", "]c", function()
		if vim.wo.diff then
			vim.cmd.normal({ "]c", bang = true })
		else
			require("gitsigns").nav_hunk("next")
		end
	end, { desc = "Jump to next git [c]hange", buffer = bufnr })

	vim.keymap.set("n", "[c", function()
		if vim.wo.diff then
			vim.cmd.normal({ "[c", bang = true })
		else
			require("gitsigns").nav_hunk("prev")
		end
	end, { desc = "Jump to previous git [c]hange", buffer = bufnr })
end

---- SEARCHING & PATTERNS -----------------------------------------------------

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<enter>")

---- GO TO --------------------------------------------------------------------

M.mappings_for_goto_code = function(event)
	vim.keymap.set(
		"n",
		"gd",
		require("telescope.builtin").lsp_definitions,
		{ buffer = event.buf, desc = "LSP: " .. "Go to Definition" }
	)

	-- WARN: This is not Goto Definition, this is Goto Declaration.
	--  For example, in C this would take you to the header.
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = event.buf, desc = "LSP: " .. "Go to Declaration" })
end

return M
