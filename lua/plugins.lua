return require('packer').startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }
  -- Icons
  use {'nvim-tree/nvim-web-devicons'}
  -- Status and Winbar line
  use { 'freddiehaddad/feline.nvim',
    config = function()
      require('config.statusline').setup()
      require('feline').winbar.setup()
      require('feline').statuscolumn.setup()
    end
  }
  -- Winbar
  -- use {
  --   "SmiteshP/nvim-navic",
  --   requires = "neovim/nvim-lspconfig",
  --   config = function()
  --     require('config.winbar').setup()    
  --   end 
  -- }
  -- Colorscheme OneDark
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
        style = 'dark'
      }
      require('onedark').load()
    end
  }
  -- Lazygit inside vim
  use {
    'kdheepak/lazygit.nvim',
    config = function()
      vim.g.lazygit_use_custom_config_file_path = 1 
      vim.g.lazygit_config_file_path = vim.fn.stdpath("config")..'/lua/config/lazygit.yaml' 
    end
  }
  -- GitSigns in gutter
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns').setup()
    end
  }
  -- Mason
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  -- Mason Lsp Config
  use {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"tsserver"},
      })
    end
  }
  -- Nvim Lsp Config
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').tsserver.setup{}
    end
  }
  -- Conquering of Completion
  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use {'ms-jpq/coq.artifacts', branch='artifacts'}
  -- Nvim Tree File Manager
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("nvim-tree").setup()
    end
  }
  -- Project Manager
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true
        },
        show_hidden = true,
      }
    end
  }
  -- Projections Workspaces
  use {
    "gnikdroy/projections.nvim",
    branch = 'pre_release',
    config = function()
      require("projections").setup({})
    end
  }
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- Toggle Term 
  use {
    "akinsho/toggleterm.nvim", 
    tag = '*', 
    config = function()
      require("toggleterm").setup {
        autochdir = true,
        shell = 'powershell.exe',
       }
    end
  }
  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {}
    end
  }
  -- BufferLine
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
    }
  -- Surround
use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
use {"folke/trouble.nvim"}
-- Wilder
use {
  'gelguy/wilder.nvim',
  config = function()
    -- config goes here
  end,
}
-- Autopair
use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
-- Comment
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
-- Neogen (Doc generator)
use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    -- tag = "*"
}
  -- Glow
  use {
    "ellisonleao/glow.nvim", 
    config = function() 
    require('glow').setup({
      glow_path = "", -- will be filled automatically with your glow bin in $PATH, if any
      install_path = vim.fn.stdpath("config")..'/bin/glow' , -- default path for installing glow binary
    })
    end
  }
  -- Indent Lines
  use "lukas-reineke/indent-blankline.nvim"
end)
