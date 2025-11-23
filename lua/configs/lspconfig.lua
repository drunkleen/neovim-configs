require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 

for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

-- -------------------
--   rust_analyzer
-- -------------------
vim.lsp.config('rust_analyzer', {
  on_attach = custom_on_attach,
  on_init = on_init,
  capabilities = capabilities,

  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

vim.lsp.enable('rust_analyzer')
