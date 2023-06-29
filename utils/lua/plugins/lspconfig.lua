return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            texlab = {
                settings = {
                    texlab = {
                        build = {
                            executable = "lualatex",
                            args = {
                                "-interaction=nonstopmode",
                                "-synctex=1",
                                "%f",
                            },
                            onSave = false,
                        },
                        forwardSearch = {
                            executable = "zathura",
                            args = {
                                "--synctex-forward",
                                "%l:1:%f",
                                "%p",
                            },
                        },
                        experimental = {
                            enumEnvironments = { "enumrate", "itemize" },
                        },
                        diagnostics = {
                            ignoredPatterns = { "Overfull*" },
                        },
                    },
                },
            },
        },
    },
}
