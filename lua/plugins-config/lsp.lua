-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('harper_ls')
vim.lsp.enable('eslint' )
vim.lsp.enable('html')
vim.lsp.enable('svelte')
vim.lsp.enable('gopls')
vim.lsp.enable('tailwindcss')
vim.lsp.enable('dockerls')
vim.lsp.enable('grammarly')
vim.lsp.enable('sqls')
vim.lsp.enable('lemminx')
vim.lsp.enable('bashls')
vim.lsp.enable('biome')
vim.lsp.enable('solargraph')
--   settings = {
--     solargraph = {
--       diagnostics = false,
--       formatting = true,
--       completion = true,
--       useBundler = true,
--     },
--   },
-- })
vim.lsp.enable('ts_ls')
vim.lsp.enable('pylsp')
