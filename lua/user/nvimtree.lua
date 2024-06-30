local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
end

-- lvim.builtin.lir.icon = ""
lvim.builtin.nvimtree.setup.on_attach = my_on_attach
lvim.builtin.nvimtree.setup.view.centralize_selection = true
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.arrow_open = ""
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.folder.arrow_closed = ""
lvim.builtin.nvimtree.setup.update_focused_file.update_cwd = false
lvim.builtin.nvimtree.setup.view.centralize_selection = true
-- lvim.builtin.nvimtree.setup.update_cwd = false
-- lvim.builtin.alpha.active = false
-- lvim.builtin.project.active = false
-- lvim.builtin.nvimtree.actions.change_dir.enable=false
-- lvim.builtin.nvimtree.setup.view.cursor = false

-- vim.api.nvim_create_autocmd({ 'WinEnter', 'BufWinEnter' }, {
--   pattern = 'NvimTree*',
--   callback = function()
--     local def = vim.api.nvim_get_hl_by_name('Cursor', true)
--     vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 100 }))
--     vim.opt.guicursor:append('a:Cursor/lCursor')
--   end,
-- })

-- vim.api.nvim_create_autocmd({ 'BufLeave', 'WinClosed' }, {
--   pattern = 'NvimTree*',
--   callback = function()
--     local def = vim.api.nvim_get_hl_by_name('Cursor', true)
--     vim.api.nvim_set_hl(0, 'Cursor', vim.tbl_extend('force', def, { blend = 0 }))
--     vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'
--   end,
-- })

vim.builtin.project.manual_mode = true
