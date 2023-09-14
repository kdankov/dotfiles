local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  
  { "shaunsingh/solarized.nvim", lazy = false }, 

  -- "xiyaowong/transparent.nvim",


  -- "tpope/vim-fugitive",
  -- "tpope/vim-rhubarb",

  -- "tpope/vim-surround",
  -- "tpope/vim-repeat",
  -- "tpope/vim-speeddating",
  -- "tpope/vim-unimpaired",
  "tpope/vim-ragtag",
  -- "tpope/vim-fugitive",
  "tpope/vim-commentary",
  "tpope/vim-liquid",

  -- "mattn/emmet-vim",
  -- "sjl/vim-sparkup",
  
  --"pangloss/vim-javascript",
  --"leshill/vim-json",

  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",
  
  "nvim-lualine/lualine.nvim",
  
  "virchau13/tree-sitter-astro",
  "wuelnerdotexe/vim-astro",

  -- "lukas-reineke/indent-blankline.nvim",
  -- "lewis6991/gitsigns.nvim",

  {
	  "kylechui/nvim-surround",
	  version = "*", -- Use for stability; omit to use `main` branch for the latest features
	  event = "VeryLazy",
	  config = function()
		  require("nvim-surround").setup({
			  -- Configuration here, or leave empty to use defaults
		  })
	  end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "css",
        "csv",
        "dockerfile",
        "git_config",
        "diff",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "php",
        "phpdoc",
        "scss",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      }
    }
  },
  "nvim-treesitter/nvim-treesitter-textobjects",

  "L3MON4D3/LuaSnip",
})

require('solarized').set()

require('lualine').setup {
  options = { theme = 'solarized_light' }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.o.background = "light"
vim.o.wrap = false
