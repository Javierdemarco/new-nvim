return require('packer').startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }

  -----------------------------------------------
  --------------  Appearance  -------------------
  -----------------------------------------------
  -- Icons
  use 'nvim-tree/nvim-web-devicons'
  -- Status line
  use { 'freddiehaddad/feline.nvim',
    config = function()
      require('config.statusline').setup()
      --require('feline').setup()
    end
  }
  -- Colorschemes
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
        style = 'dark'
      }
      require('onedark').load()
    end
  }
  -----------------------------------------------
  -----------------  GIT  ----------------------
  -----------------------------------------------
  -- Lazygit inside vim
  use {
    'kdheepak/lazygit.nvim',
  }
  -- GitSigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  -----------------------------------------------
  -----------------  LSP  ----------------------
  -----------------------------------------------
  -- Completion
  use {
    'neoclide/coc.nvim',
    branch = 'release',
  }
  -----------------------------------------------
  --------- File and Project Management  --------
  -----------------------------------------------
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
    config = function()
      require("projections").setup({})
    end
  }
  -----------------------------------------------
  --------------------- FZZ  --------------------
  -----------------------------------------------
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  
  use {
    "akinsho/toggleterm.nvim", 
    tag = '*', 
    config = function()
      require("toggleterm").setup(
      {
  autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
   -- Change the default shell. Can be a string or a function returning a string
  --shell = vim.o.shell,
  shell = powershell.exe,
       })
    end
  }

  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
