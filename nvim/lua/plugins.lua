vim.cmd [[ packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	-- color scheme
	use 'shaunsingh/nord.nvim'

	-- statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

    -- easy comment
	use {
		"terrortylor/nvim-comment",
		config = function()
		    require("nvim_comment").setup()
		end,
    }

    -- syntax hi
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    -- markdown preview in browser
    use{
        "iamcco/markdown-preview.nvim",
        run = "cd app && yarn install",
        cmd = "MarkdownPreview",
        config = function()
            vim.cmd("doautocmd mkdp_init BufEnter")
        end,
    }

    -- fast char around
    use {
      "blackCauldron7/surround.nvim",
      config = function()
        require("_surround")
      end
    }

    -- latex compile and preview
    use{
        "lervag/vimtex",
        ft = { "tex", "bib" },
        config = function()
            require("_vimtex")
        end,
    }

    -- lsp (auto complete, go do to def, etc.)
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
end)
