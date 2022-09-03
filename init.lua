-- setup user files
require('mood-scripts.install-config').setup()

-- vim script functions
require('helpers.vim-functions').setup()
require('helpers.term-functions').setup()

require('core.plugins').setup()
require('core.autocmds').setup()
require('core.set').setup()
require('core.globals').setup()
require('core.mappings').setup()

-- mood
require('mood-scripts.quick-consult').setup()

-- plugins
require('plugins.telescope').setup()
require('plugins.tree-sitter').setup()
require('plugins.autopairs').setup()
require('plugins.yanky').setup()
require('plugins.dashboard_plugin').setup()
require('plugins.nvim-tree').setup()
require('plugins.lualine').setup()
require('plugins.ctrlsf').setup()
require('core.coc').setup()

require('user.config')
require('user.debugger')

require('core.coc').setupPlugins()

-- startup
require('core.start').setup()
