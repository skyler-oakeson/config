return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = "make" },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('telescope').load_extension('fzf')
    require('telescope').load_extension('harpoon')
  end,
}
