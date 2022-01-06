local M = {}

M.setup = function()
    local signs = {
        { name = "DiagnosticSignError", text = "" },
        { name = "DiagnosticSignWarn", text = "" },
        { name = "DiagnosticSignHint", text = "" },
        { name = "DiagnosticSignInfo", text = "" },
        }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, {texthl = sign.name, text = sign.text, numhl = ""})
    end

    local config = {
        virtual_text = false,
        signs = {
          active = signs,
        },
        update_in_insert = true,
        underline = false,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    }

    vim.diagnostic.config(config)

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = "rounded",
    })
    end

    local function lsp_keymaps()
        local keymap = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        local function nkeymap(key, map)
          keymap('n', key, map, opts)
        end
        nkeymap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
        nkeymap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
        nkeymap('<space>K', '<cmd>lua vim.lsp.buf.hover()<CR>')
        nkeymap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
        nkeymap('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
        nkeymap('<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
        nkeymap('<hpace>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
        nkeymap('<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
        nkeymap('<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
        nkeymap('<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
        nkeymap('<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
        nkeymap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
        nkeymap('<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
        nkeymap('[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        nkeymap(']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
        nkeymap('<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
        nkeymap('<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
        nkeymap("gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>')
    end

    M.on_attach = function()
        lsp_keymaps()
    end

     -- cmp stuff
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
    if not status_ok then
      return
    end

    M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
