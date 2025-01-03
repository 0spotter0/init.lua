-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Color theme
  use("folke/tokyonight.nvim")

  -- Splash screen
  use({
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
  })

  use({
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    requires = { "nvim-lua/plenary.nvim" }
  })

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false
      }
    end
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end
  })
  use("nvim-treesitter/playground")
  use("nvim-treesitter/nvim-treesitter-context");

  use("theprimeagen/harpoon")
  use("tpope/vim-surround");
  use("mbbill/undotree")
  use("theprimeagen/refactoring.nvim")
  use("tpope/vim-fugitive")
  use("prettier/vim-prettier");

  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            tinymist = {
              settings = {
                exportPdf = "onType",
                outputPath = "$root/target/$dir/$name",
              }
            }
          }
        }
      },
      {
        "williamboman/mason.nvim",
        opts = {
          ensure_installed = { "tinymist" }
        }
      },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" }
    }
  })

  use("folke/twilight.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  -- use("laytan/cloak.nvim")
  use("ThePrimeagen/vim-be-good");

end)

