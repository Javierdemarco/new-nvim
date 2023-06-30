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
  -- Neogit
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  -- Fugitive
  use { 'tpope/vim-fugitive' }
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
  use { 'neoclide/coc.nvim',

    branch = 'release' }
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
end)
