return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- <-- Missing comma here!
  config = function()
    require('lualine').setup({
      options = { theme = 'gruvbox' }
    })
  end
}
