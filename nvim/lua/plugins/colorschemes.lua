return {
  { 'rebelot/kanagawa.nvim' },
  { 'sainnhe/everforest' },
  { 'sainnhe/gruvbox-material' },
  { 'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config=function()
    require('github-theme').setup({
      palettes = {
        all = {
          red = {
            base = '#8e1519',
            bright = '#ee0000',
          }
        }
      }
    })
    vim.cmd[[colorscheme github_dark_high_contrast]]
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
