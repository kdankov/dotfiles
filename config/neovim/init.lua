vim.cmd([[packadd packer.nvim]])

require("packer").startup(function()

    -- Packer
    use("wbthomason/packer.nvim")

    -- Theme
    use("overcache/NeoSolarized")

    vim.cmd([[colorscheme NeoSolarized]])

    -- Color Highlighting
    use("nvim-treesitter/nvim-treesitter")

    require("nvim-treesitter.configs").setup({
	ensure_installed = { "html", "css","javascript", "dockerfile", "gitignore", "json", "markdown", "markdown_inline", "php", "phpdoc", "python", "toml", "tsx", "typescript", "vue", "yaml" },
	highlight = {
	    enable = false,
	},
    })

    -- Status line plugin
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    require("lualine").setup({
	options = {
	    icons_enabled = false,
	    theme = "auto",
	},
    })

    -- Use FZF for searching and displayling lists
    use("junegunn/fzf")
    use("junegunn/fzf.vim")

end)

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.shell = 'zsh'

vim.opt.backup = false
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }

vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search

vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.number = true

vim.opt.list = false
-- vim.opt.listchars:append("tab:> ")

vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.wrap = false

vim.opt.cursorline = true
vim.opt.cursorcolumn = false

vim.opt.swapfile = false

-- Map global leader from \ to Space
vim.g.mapleader = ","

-- Open recently used files
vim.api.nvim_set_keymap("n", "<leader>fr", ":History<CR>", { noremap = true })

-- Open files in same directory as current file
vim.api.nvim_set_keymap("n", "<leader>ff", ":e %:h/<C-d>", { noremap = true })
