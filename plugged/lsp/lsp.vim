lua <<EOF
    local servers = {
        gopls = {},
        html = {},
        jsonls = {},
        rust_analizer = {},
        semeko_lua = {},
        tsserver = {},
        vimls = {},
    }

    -- require'lspconfig'.gopls.setup{}

    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = { noremap=true, silent=true }
    vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      -- Use LSP as the handler for formatexpr.
      -- See `:help formatexpr` for more information.
      vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

      -- mapping:
      require('lsp.mapping').setup(client, bufnr)
    end

    -- Use a loop to conveniently call 'setup' on multiple servers and
    -- map buffer local keybindings when the language server attaches
    local servers = { 'gopls', 'quick_lint_js' }
    for _, lsp in pairs(servers) do
      require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
          -- This will be the default in neovim 0.7+
          debounce_text_changes = 150,
        }
      }
    end

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false
        }
    )
EOF
