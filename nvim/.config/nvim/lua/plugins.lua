vim.cmd [[ packadd packer.nvim]]

return require("packer").startup(function()
	-- Packer can manage itself
	use "wbthomason/packer.nvim"


	-- color scheme
	use "shaunsingh/nord.nvim"

    use "vimwiki/vimwiki"

	-- statusline
	use "nvim-lualine/lualine.nvim"
    -- use "kyazdani42/nvim-web-devicons" -- img for statusline

    -- syntax hi
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    -- easy comment
    use "numToStr/Comment.nvim"

    use "windwp/nvim-autopairs"

    -- markdown preview
    use "davidgranstrom/nvim-markdown-preview"

    -- color preview
    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    }

    -- fast char around
    use "blackCauldron7/surround.nvim"

    -- my own plugin for latex
    use 'nNeD5/nvim-pdfpreview'

    -- snippets
    use 'dcampos/nvim-snippy'
    -- lsp (go to def, etc.)
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- cmp plugins (autocomplete)
    use "hrsh7th/nvim-cmp"          -- The completion plugin
    use "hrsh7th/cmp-buffer"        -- buffer completions
    use "hrsh7th/cmp-path"          -- path completions
    use "hrsh7th/cmp-cmdline"       -- cmdline completions
    use "dcampos/cmp-snippy"        -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"

    -- for broweser
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }

    -- auto formating
    use "jose-elias-alvarez/null-ls.nvim"

end)
