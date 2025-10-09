-- Put this in: ~/.config/nvim/lua/plugins/telescope.lua

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      -- File ignore patterns - applied to all pickers
      file_ignore_patterns = {
        -- Images
        "%.png",
        "%.jpg",
        "%.jpeg",
        "%.gif",
        "%.bmp",
        "%.ico",
        "%.webp",
        "%.svg",
        -- Videos
        "%.mp4",
        "%.mkv",
        "%.avi",
        "%.mov",
        "%.wmv",
        "%.flv",
        "%.webm",
        -- Audio
        "%.mp3",
        "%.wav",
        "%.flac",
        "%.ogg",
        "%.m4a",
        -- Documents/PDFs
        "%.pdf",
        "%.doc",
        "%.docx",
        "%.xls",
        "%.xlsx",
        "%.ppt",
        "%.pptx",
        -- Archives
        "%.zip",
        "%.tar",
        "%.tar%.gz",
        "%.rar",
        "%.7z",
        -- Fonts
        "%.ttf",
        "%.otf",
        "%.woff",
        "%.woff2",
        "%.eot",
        -- Binaries/Executables
        "%.exe",
        "%.dll",
        "%.so",
        "%.dylib",
        "%.bin",
        -- Database
        "%.db",
        "%.sqlite",
        "%.sqlite3",
        -- Compiled code
        "%.o",
        "%.a",
        "%.out",
        "%.class",
        "%.pyc",
        -- Common build/dependency directories (optional, remove if you want to search inside them)
        "node_modules/",
        "%.git/",
        "build/",
        "dist/",
        "target/",
      },
    },
    pickers = {
      find_files = {
        hidden = true, -- Show hidden files (including .env)
        follow = false, -- Don't follow symlinks
        no_ignore = false, -- Respect .gitignore
        no_ignore_parent = false, -- Respect parent .gitignore files
      },
    },
  },
}
