return {
  { 'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config=function()
      require('github-theme').setup({})
      vim.cmd[[colorscheme github_dark_default]]
      vim.api.nvim_set_hl(0, "FloatBorder", {fg = "#e6edf3"})
      vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#0d1117"})
    end
  },
  { 'bluz71/vim-moonfly-colors'},
}
