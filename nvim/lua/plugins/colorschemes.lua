return {
  { 'rebelot/kanagawa.nvim' },
  { 'sainnhe/everforest' },
  { 'sainnhe/gruvbox-material' },
  { 'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config=function()
      require('github-theme').setup({
        options = {
          darken = {
            floats = true,
            sidebars = {
              enabled = false
            }
          }
        },
        groups = {
        }
      })
      vim.cmd[[colorscheme github_dark_default]]
      vim.api.nvim_set_hl(0, "FloatBorder", {fg = "#e6edf3"})
      vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#0d1117"})
    end
  },
  { 'joshdick/onedark.vim' },
  { 'shaunsingh/moonlight.nvim' },
  { 'bluz71/vim-moonfly-colors'},
  { 'w0ng/vim-hybrid' },
  { 'xero/miasma.nvim' },
  { 'tomasiser/vim-code-dark'},
  { 'ayu-theme/ayu-vim' },
  { 'kvrohit/rasmus.nvim' },
  { 'dasupradyumna/midnight.nvim' },
  { 'kepano/flexoki-neovim' },
  { 'savq/melange-nvim' },
  { 'rombrom/fansi2' },
  { 'folke/tokyonight.nvim' },
  { 'aktersnurra/no-clown-fiesta.nvim' }
  }
