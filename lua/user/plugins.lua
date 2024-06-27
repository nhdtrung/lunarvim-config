lvim.plugins = {
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      {'kkharji/sqlite.lua', module = 'sqlite'},
      -- you'll need at least one of these
      -- {'nvim-telescope/telescope.nvim'},
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require("user.neoclip")
    end,
    lazy = true,
    keys = "<leader>y",
  },
  "gbprod/yanky.nvim",
  {
    config = function()
      require("yanky").setup({
        -- Your configuration options here
      })
    end,
  },
  "easymotion/vim-easymotion",
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/code", "~/Downloads", "/" },
      }
    end
  }
}
