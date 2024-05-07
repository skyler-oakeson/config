vim.g.mapleader = ' '
vim.keymap.set('i', 'jk', '<esc>')

-- telescope keymap --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fa', "<cmd>lua require'telescope.builtin'.find_files({ find_command = { 'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>' )
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>' )
vim.keymap.set('n', 'fm', '<cmd>Telescope harpoon marks<cr>' )

-- focus windows --
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('t', '<C-`>', '<C-\\><C-n>')

-- clear search --
vim.keymap.set('n', '<leader>n', vim.cmd.nohl )

-- yank and paste clipboard --
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('v', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('n', '<leader>p', '"*p')

-- toggle relative number --
vim.keymap.set('n', '<leader>r', '<cmd>set relativenumber!<cr>')

-- gitsigns commands --
vim.keymap.set('n', ']c', '<cmd>Gitsigns next_hunk<cr>')
vim.keymap.set('n', '[c', '<cmd>Gitsigns prev_hunk<cr>')
vim.keymap.set('n', '<leader>hr', '<cmd>Gitsigns reset_hunk<cr>')
vim.keymap.set('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<cr>')
vim.keymap.set('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<cr>')

-- harpoon commands --
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>b", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<leader>pp", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<leader>nn", function() harpoon:list():next() end)

vim.keymap.set('n', '<leader>dd', '<cmd> lua vim.diagnostic.open_float() <cr>')
