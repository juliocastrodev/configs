-- nvim Config File by @juliocastrodev

----- General ----------------------------------
vim.g.mapleader = " "
vim.o.expandtab = true -- expand tabs with spaces
vim.o.smartindent = true -- syntax aware indentations for newline inserts
vim.o.tabstop = 2 -- num of space characters per tab
vim.o.shiftwidth = 2 -- spaces per indentation level
vim.wo.wrap = false -- avoid wrapping
vim.opt.nu = true -- show line numbers
vim.opt.relativenumber = true -- numbers are relative to cursor
------------------------------------------------

--- Plugin Manager: lazy.nvim setup ------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)
------------------------------------------------

--- Plugins ------------------------------------
require("lazy").setup({
  { -- Autoclose {}, (), etc
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  },
  { -- Surround utilities
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() require("nvim-surround").setup({}) end
  },
  { -- Theme
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({ filter = "octagon" })
      vim.cmd.colorscheme("monokai-pro")
    end
  },
  {  -- Fuzzy finder
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope_buildtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', telescope_buildtin.find_files, {})
    end
  },
  { -- Threesitter (precise syntax highlighting)
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {  -- LSP (autocompletion, ide features, etc)
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      "neovim/nvim-lspconfig", "hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip", "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"
    },
    config = function ()
      local lsp_zero = require('lsp-zero')

      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)

      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = { 'tsserver', 'eslint', 'lua_ls' },
        handlers = { lsp_zero.default_setup },
      })
    end
  },
})
------------------------------------------------

--- Generic Remaps -----------------------------
vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- Open explorer
vim.keymap.set("i", "jk", "<Esc>") -- Enter normal mode with 'jk' combination
------------------------------------------------
