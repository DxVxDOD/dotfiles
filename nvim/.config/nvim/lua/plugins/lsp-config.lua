return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      somesass = {},
      cssmodules_ls = {},
      css_variables = {},
      cssls = {},
    },
  },
}
