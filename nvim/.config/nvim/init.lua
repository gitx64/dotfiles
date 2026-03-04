-- Neovim Quality of Life
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.swapfile = false

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Leader key
vim.g.mapleader = " "

-- Plugins 
local plugins = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
   "ibhagwan/fzf-lua",
   lazy = false,
   dependencies = { "nvim-tree/nvim-web-devicons" },
   opts = {}
  },
  {
   'nvim-treesitter/nvim-treesitter',
   lazy = false,
   build = ':TSUpdate'
  },
  {
   "folke/snacks.nvim",
   priority = 1000,
   lazy = false,
   ---@type snacks.Config
   opts = {
     -- your configuration comes here
     -- or leave it empty to use the default settings
     -- refer to the configuration section below
     bigfile = { enabled = true },
     dashboard = { 
       enabled = true ,
       sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "ascii-image-converter ~/Downloads/krishnaphoto.jpg -C -d 20,20 -bb",
            pane = 2,
            indent = 4,
            height = 30,
          },
        },
      },
     explorer = { enabled = true },
     indent = { enabled = true },
     input = { enabled = true },
     picker = { enabled = true },
     notifier = { enabled = true },
     quickfile = { enabled = true },
     scope = { enabled = true },
     scroll = { enabled = true },
     statuscolumn = { enabled = true },
     words = { enabled = true },
   },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    { "zk", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "Zk", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
}

local opts = {}

-- requirements
require("lazy").setup(plugins, opts)
require("tokyonight").setup()
require'nvim-treesitter'.setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}
require'nvim-treesitter'.install { 'lua', 'bash' }

require('lualine').setup {
 options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2, color = { gui = 'bold' } } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center components here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2, color = { gui = 'bold' } },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

-- Colorscheme
require("tokyonight").setup()
vim.cmd.colorscheme "tokyonight"

-- TreeSitter Extra setups
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'bash' },
  callback = function() vim.treesitter.start() end,
})
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

-- keymaps 
vim.keymap.set('n', '<leader>ff', "<cmd>FzfLua files cwd=~/<CR>", { desc = "Fzf Live Grep" })

