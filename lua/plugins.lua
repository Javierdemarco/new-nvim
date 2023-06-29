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
  
  -----------------------------------------------
  -----------------  LSP  ----------------------
  -----------------------------------------------
  -- LSP Installer Mason
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        function (server_name)
          require('lspconfig')[server_name].setup {}
        end
      }
    end

  }
  use {
    "neovim/nvim-lspconfig",
  }
use {'echasnovski/mini.completion',
config = function()
  require('mini.completion').setup()
end
}
use{
	"L3MON4D3/LuaSnip",
}
  --use 'ms-jpq/coq_nvim'

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
  use({
    "gnikdroy/projections.nvim",
    config = function()
        require("projections").setup({})
    end
})

end)
