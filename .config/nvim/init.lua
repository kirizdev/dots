vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.termguicolors = true

vim.g.mapleader = ","

local map = vim.api.nvim_set_keymap

map("n", "<leader>o", "<Cmd>NvimTreeOpen<CR>", {noremap = true})

require("packer").startup(function (use)
	use "wbthomason/packer.nvim"

	use {
		"RRethy/nvim-base16",
		config = function()
			require("base16-colorscheme").setup("theme")
		end
	}

	use {
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup()	
		end
	}
	
	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter").setup()
		end
	}
end)
