-- lua/plugins/colorscheme.lua
return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")

      vim.api.nvim_set_hl(0, "@keyword", { bold = true })
      vim.api.nvim_set_hl(0, "@keyword.function", { bold = true })
      vim.api.nvim_set_hl(0, "@comment", { italic = true })
      vim.api.nvim_set_hl(0, "@type", { italic = true })
      vim.api.nvim_set_hl(0, "@lsp.type.function", { bold = true })
    end,
  },
}
