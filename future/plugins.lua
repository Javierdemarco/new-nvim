return require('packer').startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }

  -- TODO: all keybidns
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      require("plugins.telescope")
    end,
  }
  use 'nvim-telescope/telescope-project.nvim'
  use 'xiyaowong/telescope-emoji.nvim'
  use "artart222/telescope_find_directories"
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'jvgrootveld/telescope-zoxide'

  -----------------------------------------------
  -------------------- LSP   --------------------
  -----------------------------------------------

  -- TODO: autostart and icon long
  use { 'ms-jpq/coq_nvim', branch = 'coq',
    after = 'nvim-lspconfig',
    config = function()
      require("plugins.coq")
    end
  }
  -- use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

  -- Snippet engine
  use {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip/loaders/from_vscode").lazy_load()
    end,
    requires = {
      -- Snippet collections
      "rafamadriz/friendly-snippets",
    },
  }

  -- LSP manager
  use {
    "williamboman/nvim-lsp-installer",
    event = "BufRead",
    cmd = {
      "LspInstall",
      "LspInstallInfo",
      "LspPrintInstalled",
      "LspRestart",
      "LspStart",
      "LspStop",
      "LspUninstall",
      "LspUninstallAll",
    },
  }

  -----------------------------------------------
  ----------------- Markdown   ------------------
  -----------------------------------------------

  -- Live Preview on floating window
  -- TODO: config
  use 'ellisonleao/glow.nvim'

  -----------------------------------------------
  ----------------- UI   --------------------
  -----------------------------------------------

  -- Smooth scroll
  use {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end,
  }

  -- Better sintax highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('plugins.treesitter')
    end,
    run = ":TSUpdate",
    event = "BufEnter",
    cmd = {
      "TSInstall",
      "TSInstallSync",
      "TSBufEnable",
      "TSBufToggle",
      "TSEnableAll",
      "TSInstallFromGrammer",
      "TSToggleAll",
      "TSUpdate",
      "TSUpdateSync"
    },
  }

  -- Text Objects for Treesitter
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = "nvim-treesitter",
  }

  -- Context when in long function
  use {
    'romgrk/nvim-treesitter-context',
    config = function()
      require('treesitter-context').setup()
      vim.cmd('TSContextEnable')
    end,
    after = "nvim-treesitter",
  }
  -- Colors in HEX
  use {
    'norcalli/nvim-colorizer.lua',
    event = "BufEnter",
    config = function()
      require('colorizer').setup {
        "*",
        css = { rgb_fn = true; }
      }
      vim.cmd("ColorizerAttachToBuffer")
    end,
  }
  -- Highlight range of operations
  use {
    'winston0410/range-highlight.nvim',
    config = function()
      require('range-highlight').setup()
    end,
    requires = { 'winston0410/cmd-parser.nvim' },
  }
  -- Buffer Line
  use {
    'akinsho/bufferline.nvim',
    config = function()
      require('plugins.bufferline')
    end
  }

  -- Status Line
  use {
    'feline-nvim/feline.nvim',
    config = function()
      require('plugins.feline')
    end
  }

  -- Indentation guides
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require('plugins.indent-blankline')
    end,
  }
  use { 'p00f/nvim-ts-rainbow'
    , after = 'nvim-treesitter' }


  -----------------------------------------------
  ----------------- UTILITY   --------------------
  -----------------------------------------------

  -- Terminal
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require('plugins.toggleterm')
    end,
  }

  -- Startup time
  use {
    'dstein64/vim-startuptime',
  }

  -- Dev icons in ui
  use 'kyazdani42/nvim-web-devicons'

  -- Ranger inside nvim
  use {
    'kevinhwang91/rnvimr',
    config = function()
      require('plugins.ranger')
    end,
  }

  -- NvimTree as Filetree
  use {
    "kyazdani42/nvim-tree.lua",
    cmd = {
      "NvimTreeOpen",
      "NvimTreeFocus",
      "NvimTreeToggle",
    },
    config = function()
      require("plugins.nvim-tree")
    end
  }

  -- Preatty list for showing things related to errors and warnings
  -- TODO: see if it needs config
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        auto_preview = false
      }
    end,
  }

  -- Project Management
  -- TODO: config and keybinds
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        manual_root = true,
        silent_chdir = false,
      }
    end,
  }
  --
  -- Better Command Line
  use {
    'gelguy/wilder.nvim',
    config = function()
      require('plugins.wilder')
    end,
    requires = { "romgrk/fzy-lua-native" }
  }

  -- Keybinding configuration
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end,
  }

  -- Rearrange Windows
  -- TODO: see if it needs config or default is good, check keybinds
  use {
    'sindrets/winshift.nvim',
  }

  -----------------------------------------------
  ----------------- GIT   ----------------------
  -----------------------------------------------

  -- Git Blame on changes
  -- TODO: check if it needs config
  use 'f-person/git-blame.nvim'

  -- Lazygit inside vim
  -- TODO: check if it needs config
  use {
    'kdheepak/lazygit.nvim',
  }

  -- Git Signs on lines
  -- TODO: check if it needs config
  use {
    'lewis6991/gitsigns.nvim',
    event = "BufRead",
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Neogit
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  -- TODO: check if it needs config
  use { 'tpope/vim-fugitive' }


  -----------------------------------------------
  ------------- EDITING TOOLS   -----------------
  -----------------------------------------------
  -- Surrond operations
  -- TODO: Good config (default keybinds is "s")
  -- use {
  --   'blackCauldron7/surround.nvim',
  --   config = function()
  --     require('surround').setup {
  --       mappings_style = "sandwich"
  --     }
  --   end,
  -- }

  -- Multiple Cursor
  -- TODO: config and keybind
  use 'terryma/vim-multiple-cursors'

  -- Autopair
  -- TODO: see if its needs config
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end,
  }

  -- Delete Trailing Spaces and Lines
  -- TODO: see if it needs config
  use "McAuleyPenney/tidy.nvim"

  -- FORMATER
  -- TODO: doesnt work
  -- use 'sbdchd/neoformat'

  -- Comments made easy
  -- TODO: seemds good in default, check if needs config
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- TODO: highlighting
  -- TODO: config :Todo{Quickfix, Telescope, LocList, Trouble}
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }
end)
--EOF
