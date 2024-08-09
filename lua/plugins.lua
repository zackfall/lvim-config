lvim.plugins = {
  'norcalli/nvim-colorizer.lua',
  'tpope/vim-fugitive',
  'Exafunction/codeium.vim',
  {
    'folke/todo-comments.nvim',
    config = function()
      require('todo-comments').setup()
    end
  },
  {
    'j-hui/fidget.nvim',
    opts = {
      notification = {
        window = {
          winblend = 0
        }
      }
    }
  },
  {
    'xiyaowong/transparent.nvim',
    config = function()
      require('transparent').setup({})
    end
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000
  },
  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
    end
  },
  {
    'mrcjkb/rustaceanvim',
    lazy = false
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup({
        enabled = true
      })
    end
  },
  {
    'stevearc/dressing.nvim',
    opts = {}
  },
  {
    'epwalsh/obsidian.nvim',
    version = "*",
    lazy = true,
    ft = "markdown"
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy'
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "x", "o" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = "c",               function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    }
  },
  { 'wakatime/vim-wakatime', lazy = false },
}
