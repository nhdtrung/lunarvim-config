lvim.builtin.neoclip = { active = true, enable_persistent_history = false }

reload "user.nvimtree"
reload "user.keymaps"
reload "user.neoclip"

-- Additional Plugins
-- =========================================
require("user.plugins").config()
