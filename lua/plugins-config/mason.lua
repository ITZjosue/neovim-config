require('mason').setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "ts_ls",
    "html",
    "cssls",
    "jsonls",
    "bashls",
    "dockerls",
    "yamlls",
    "gopls",
  },
  automatic_enable= false,
})
