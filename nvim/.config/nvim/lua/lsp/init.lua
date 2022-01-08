local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("Error: lspconfig")
    return
end

require 'lsp.lsp_installer'
require'lsp.handlers'.setup()
