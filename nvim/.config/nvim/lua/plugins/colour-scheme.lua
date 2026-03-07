return {
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox.config").set_fox("nordfox")
      require("nightfox").load()
    end,
  },
  -- { "EdenEast/nightfox.nvim" },
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "nightfox",
  --     },
  --   },
}
