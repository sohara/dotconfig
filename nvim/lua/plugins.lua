local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	--[[ use({ ]]
	--[[ 	"svrana/neosolarized.nvim", ]]
	--[[ 	requires = { "tjdevries/colorbuddy.nvim" }, ]]
	--[[ }) ]]
	use("shaunsingh/nord.nvim")
	use("numToStr/Comment.nvim") -- Commenting like TPope's vim plugin
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("kyazdani42/nvim-tree.lua") -- File icons
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip") -- Snippets
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvimp cpm source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvimp cpm source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Context aware commenting, e.g. for JSX
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("MunifTanjim/prettier.nvim") -- Prettier plugin for Neovim's built-in LSP client
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("nvim-lua/plenary.nvim") -- Common utilities
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	use("akinsho/nvim-bufferline.lua")
	use("norcalli/nvim-colorizer.lua")

	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame and browse
	use("ur4ltz/surround.nvim")

	use("mfussenegger/nvim-dap")
	use("David-Kunz/jester") -- Jest test running and debugging
	use("theHamsta/nvim-dap-virtual-text") -- show values of variables in context
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }) -- Out of the box UI for DAP

	use({ "folke/which-key.nvim" })
end)
