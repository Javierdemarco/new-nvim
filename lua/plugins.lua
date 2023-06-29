return require('packer').startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }

  -- Colorschemes
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').load()
    end
  }

  -----------------------------------------------
  ----------------- GIT   ----------------------
  -----------------------------------------------

  -- Lazygit inside vim
  use {
    'kdheepak/lazygit.nvim',
  }

  -- Neogit
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Fugitive
  use { 'tpope/vim-fugitive' }


end)
