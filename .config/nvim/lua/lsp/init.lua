-- ----------------------------------------------------------------------------
-- LSP Config
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- Lua LSP Config
-- ----------------------------------------------------------------------------
local sumneko_root_path =  '/home/gasacchi/xxx/.dev/clone/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"


local custom_attach = require'completion'.on_attach


require'lspconfig'.sumneko_lua.setup {
  on_attach = custom_attach,
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
}

-- ----------------------------------------------------------------------------
-- Reason/Ocaml LSP Config
-- ----------------------------------------------------------------------------
require'lspconfig'.ocamllsp.setup{on_attach=custom_attach}


-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
-- Use <Tab> and <S-Tab> to navigate through popup menu
local cmd = vim.cmd
local o = vim.o
local g = vim.g

-- Use tab and s-tab to navigate complition
cmd("inoremap <expr> <Tab>   pumvisible() ? \"<C-n>\" : \"<Tab>\"")
cmd("inoremap <expr> <S-Tab> pumvisible() ? \"<C-p>\" : \"<S-Tab>\"")

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noinsert,noselect"

-- Avoid showing message extra message when using completion
cmd("set shortmess+=c")

-- Matching strategy
g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
-- Disable auto hover 
g.completion_enable_auto_hover = 0

-- ----------------------------------------------------------------------------
-- EOF
-- ----------------------------------------------------------------------------
