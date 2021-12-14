vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    underline = false,
    update_in_insert = true,
    severity_sort = false
    })

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

  -- See `:help vim.lsp.*` for documentation on any of the below functions
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local function nkeymap(key, map)
  keymap('n', key, map, opts)
end
nkeymap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nkeymap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nkeymap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
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

local lua_opts = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "use" }
                    }
                }
            }
        }

lsp_installer.on_server_ready(function(server)
    local opts_srv = {}
    if server.name == "sumneko_lua" then
        opts_srv = lua_opts
    end
    server:setup(opts_srv)
end)
