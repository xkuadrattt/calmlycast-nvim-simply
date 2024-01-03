return {
  { "elentok/format-on-save.nvim" },
  { 'numToStr/Comment.nvim',      opts = {} },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme onedark")
    end
  },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  'folke/neodev.nvim', -- new

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',

      'hrsh7th/cmp-nvim-lsp',

    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
  },


  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = "VeryLazy"
  },

  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  },
  { 'vijaymarupudi/nvim-fzf' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      require("lualine").setup({
        icons_enabled = true,
        theme = 'onedark',
      })
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    init = function()
      require("nvim-ts-autotag").setup()
    end
  }

}
