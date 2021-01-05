-- ----------------------------------------------------------------------------
-- LSP Config
-- ----------------------------------------------------------------------------

-- Rust lsp
require'lspconfig'.rust_analyzer.setup{on_attach=require'completion'.on_attach}
-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)





-- ----------------------------------------------------------------------------
-- Additional options
-- ----------------------------------------------------------------------------
-- Use <Tab> and <S-Tab> to navigate through popup menu
local cmd = vim.cmd
local o = vim.o
local g = vim.g
cmd("inoremap <expr> <Tab>   pumvisible() ? \"<C-n>\" : \"<Tab>\"")
cmd("inoremap <expr> <S-Tab> pumvisible() ? \"<C-p>\" : \"<S-Tab>\"")

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing message extra message when using completion
cmd("set shortmess+=c")

-- Disable auto hover 
g.completion_enable_auto_hover = 0

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
