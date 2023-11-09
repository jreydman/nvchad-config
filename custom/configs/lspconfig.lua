local config = require "plugins.configs.lspconfig"
local lspconfig = require "lspconfig"

local on_attach = config.on_attach
local capabilities = config.capabilities

require("neodev").setup({
  -- add any options here, or leave empty to use the default settings
})


local servers = { "html", "cssls", "tsserver", "clangd", "gopls", "gradle_ls" }

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)
end

-- for all lsp servers
for _, lsp in ipairs(servers) do
  local server_config = {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
      preferences = {
        disableSuggestions = true,
      },
    },
  }

  -- Add the command only for tsserver
  if lsp == "tsserver" then
    server_config.commands = {
      OrganizeImports = organize_imports,
      description = "Organize Imports",
    }
  end

  lspconfig[lsp].setup(server_config)
end
