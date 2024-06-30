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
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup()
      -- then load the extension
      telescope.load_extension("live_grep_args")
    end,
  },
  -- "gbprod/yanky.nvim",
  -- {
  --   config = function()
  --     require("yanky").setup({
  --       -- Your configuration options here
  --     })
  --   end,
  -- },
  "easymotion/vim-easymotion",
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/code", "~/Downloads", "/" },
      }
    end
  },
  -- hop EasyMotion-like
  "phaazon/hop.nvim"
}
