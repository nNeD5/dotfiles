return {
    settings = {
      texlab = {
        auxDirectory = ".",
        bibtexFormatter = "texlab",
        build = {
          args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
          executable = "latexmk",
          forwardSearchAfter = false,
          onSave = true
        },
        chktex = {
          onEdit = true,
          onOpenAndSave = true
        },
        diagnosticsDelay = 300,
        formatterLineLength = 80,
        forwardSearch = {
            executable = "zathura",
            args = {"--synctex-forward", "%l:1:%f", "%p"}
        },
        latexFormatter = "latexindent",
        latexindent = {
          modifyLineBreaks = false
        }
      }
    }
}
