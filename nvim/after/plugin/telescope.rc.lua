local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")

function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			mappings = {
				-- custom insert mode mappings
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
})

telescope.load_extension("file_browser")

--[[ local opts = { noremap = true, silent = true } ]]
--[[ vim.keymap.set('n', '<Leader>f', ]]
--[[   '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', ]]
--[[   opts) ]]
--[[ vim.keymap.set("n", "<Leader>r", '<cmd>lua require("telescope.builtin").live_grep()<cr>') ]]
--[[ vim.keymap.set("n", "<Leader>b", '<cmd>lua require("telescope.builtin").buffers()<cr>') ]]
--[[ vim.keymap.set("n", "<Leader>t", '<cmd>lua require("telescope.builtin").help_tags()<cr>') ]]
vim.keymap.set("n", "<Leader>c", '<cmd>lua require("telescope.builtin").resume()<cr>')
vim.keymap.set("n", "<Leader>di", '<cmd>lua require("telescope.builtin").diagnostics()<cr>')
vim.keymap.set(
	"n",
	"sf",
	'<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config = { height = 40 } })<cr>'
)
