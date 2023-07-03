return require('packer').startup(function(use)
  -- Packer
  use { "wbthomason/packer.nvim" }
  -- Icons
  use 'nvim-tree/nvim-web-devicons'
  -- Status line
  use { 'freddiehaddad/feline.nvim',
    config = function()
      require('config.statusline').setup()
      --require('feline').setup()
    end
  }
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
  }
  -- GitSigns in gutter
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  -- Vscode extensions inside nvim
  use {
    'neoclide/coc.nvim',
    branch = 'release',
  }
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
        autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
        -- Change the default shell. Can be a string or a function returning a string
        --shell = vim.o.shell,
        shell = "powershell.exe",
       }
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
use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
-- Indent Lines
use "lukas-reineke/indent-blankline.nvim"
end)
