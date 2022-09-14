local status, whichkey = pcall(require, "which-key")
if not status then
	print("Could not find which-key!")
	return
end

whichkey.setup({})

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "",
	buffer = nil, -- Global mappings. Specify a buffer for bufer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true,
}

local mappings = {
	["s"] = {
		name = "Splits",
		h = { "<C-w>h", "Move to right" },
		k = { "<C-w>k", "Move up" },
		j = { "<C-w>j", "Move down" },
		l = { "<C-w>l", "Move left" },
		s = { ":split<Return><C-w>w", "Split horizontally" },
		v = { ":vsplit<Return><C-w>w", "Split vertically" },
	},
	["<leader>"] = {
		["b"] = {
			"<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
			"List buffers",
		},
		["c"] = { "<cmd>bdelete!<CR>", "Close Buffer" },
		["f"] = {
			'<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>',
			"Find files",
		},
		["F"] = {
			'<cmd>lua require("telescope.builtin").live_grep()<cr>',
			"Find by text",
		},
		["q"] = { "<cmd>q!<CR>", "Quit" },
		["w"] = { "<cmd>w!<CR>", "Save" },
		g = {
			name = "Git",
			--[[ g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" }, ]]
			b = { "<cmd>lua require('git.blame').blame()<cr>", "Blame buffer/file" },
			g = { "<cmd>lua require('git.browse').open(false)<cr>", "Open file/folder/lines in repo" },
			j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
			k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
			l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
			p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
			r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
			R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
			s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
			S = { "<cmd>lua require 'gitsigns'.stage_buffer()<cr>", "Stage Hunk" },
			u = {
				"<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
				"Undo Stage Hunk",
			},
			o = { "<cmd>Telescope git_status<cr>", "Show git status" },
			B = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
			d = {
				"<cmd>lua require 'gitsigns'.diffthis()<cr>",
				"Diff head",
			},
			D = {
				"<cmd>lua require 'gitsigns'.diffthis('~')<cr>",
				"Diff head~1",
			},
			t = { "<cmd>lua require 'gitsigns'.toggle_deleted()<cr>", "Toggle deleted" },
			T = { "<cmd>lua require 'gitsigns'.toggle_current_line_blame()<cr>", "Toggle current line blame" },
		},
		s = {
			name = "Search",
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
			h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
			M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
			r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
			R = { "<cmd>Telescope registers<cr>", "Registers" },
			k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
			C = { "<cmd>Telescope commands<cr>", "Commands" },
		},
		j = {
			name = "Jester",
			f = { '<cmd>lua require("jester").run_file()<CR>', "Run file" },
			t = { '<cmd>lua require("jester").run()<CR>', "Run nearest test(s)" },
			l = { '<cmd>lua require("jester").run_last()<CR>', "Run last" },
			d = { '<cmd>lua require("jester").debug()<CR>', "Debug nearest" },
			D = { '<cmd>lua require("jester").debug_file()<CR>', "Debug file" },
		},
	},
}

whichkey.register(mappings, opts)
