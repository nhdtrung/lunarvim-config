-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6 Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
-- Add your custom key mappings

-- Set leader key to comma
lvim.leader = ","

-- Open/Close toggleterm
lvim.builtin.terminal.open_mapping = "<leader>t"

-- Normal mode key mapping
lvim.keys.normal_mode = {
  [",."] = "g;",                -- Go to last edit location
  [",z"] = ":bprevious<CR>",    -- Move to previous buffer
  [",x"] = ":bnext<CR>",        -- Move to next buffe
  ["H"] = "H",                  -- Move to top of the screen
  ["M"] = "M",                  -- Move to middle of the screen
  ["L"] = "L",                  -- Move to bottom of the screen
  ["zz"] = "zz",                -- Center the screen on the current line
  ["zt"] = "zt",                -- Move the current line to the top of the screen
  ["zb"] = "zb",                -- Move the current line to the bottom of the screen
  ["<C-u>"] = "<C-u>zz",        -- Scroll half page up and center
  ["<C-d>"] = "<C-d>zz",        -- Scroll half page down and center
  ["<C-b>"] = "<C-b>",          -- Scroll full page up
  ["<C-f>"] = "<C-f>",          -- Scroll full page down
  ["<C-o>"] = "<C-o>",          -- Go to older cursor position
  ["<C-i>"] = "<C-i>",          -- Go to newer cursor position
}

-- Custom key mappings for splitting windows
-- Vertical split
lvim.keys.normal_mode["<leader>v"] = ":vsplit<CR>"
-- Horizontal split
lvim.keys.normal_mode["<leader>V"] = ":split<CR>"

-- NvimTree configuration
-- lvim.builtin.nvimtree.setup.view.mappings.list = {
  -- { key = "v", action = "vsplit" },  -- Vertical split with 'v'
  -- { key = "vh", action = "split" },   -- Horizontal split with 's'
-- }

-- File Navigation
lvim.keys.normal_mode["//"] = ":noh<CR>"                       -- Clear the search
lvim.keys.normal_mode[",t"] = ":Telescope find_files<CR>"      -- Fuzzy file selector
lvim.keys.normal_mode[",b"] = ":Telescope buffers<CR>"         -- Buffer selector
lvim.keys.normal_mode["<C-\\>"] = ":CocCommand explorer<CR>"   -- Show current file in coc-explorer

-- Surround mappings
lvim.keys.visual_mode = {
  [",#"] = "ysiw#",    -- Surround word with #
  [",\""] = "ysiw\"",  -- Surround word with "
  [",']"] = "ysiw'",   -- Surround word with '
  [",]"] = "ysiw]",    -- Surround word with ]
  [",)"] = "ysiw)",    -- Surround word with )
  [",}"] = "ysiw}",    -- Surround word with }
}

-- Plugin installation
lvim.plugins = {
  {
    "gbprod/yanky.nvim",
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
  },
}

-- Set key mappings for Hop commands
vim.keymap.set('n', '<Leader><Leader>b', '<cmd>HopWordBC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><Leader>w', '<cmd>HopWordAC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><Leader>j', '<cmd>HopLineAC<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><Leader>k', '<cmd>HopLineBC<CR>', { noremap = true, silent = true })
