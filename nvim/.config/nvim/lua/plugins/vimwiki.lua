return {
    {
        "vimwiki/vimwiki",
        lazy = false,
        init = function()
            vim.g.vimwiki_use_calendar = 1
            vim.g.vimwiki_global_ext = 0
            vim.g.vimwiki_listsyms = " ox"
            vim.cmd([[ let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown'} ]])

            vim.g.vimwiki_list = {
                {
                    path = "~/vimwiki/",
                    syntax = "markdown",
                    ext = ".md",
                },
            }
            vim.g.vimwiki_key_mappings = {
                all_maps = 1,
                global = 0,
                headers = 0,
                links = 1,
                table_mappings = 0,
                lists = 1,
                text_objs = 0,
                table_format = 0,
                html = 0,
                mouse = 0,
            }
        end,
    },

    -- ===================
    -- Calneaer for Vim Wiki
    "mattn/calendar-vim",
}
