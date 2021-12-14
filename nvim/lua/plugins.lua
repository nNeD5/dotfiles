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
	use{
		"terrortylor/nvim-comment",
		cmd = "CommentToggle",
		config = function()
		    require("plugins.others").nvim_comment()
		end,
    }

    -- markdown preview in browser (not work)
    --use 'iamcco/markdown-preview.nvim'


    use {
      "blackCauldron7/surround.nvim",
      config = function()
        require"surround".setup {mappings_style = "surround"}
      end
    }

    -- lsp (auto complete, go do to def, etc.)
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
end)

