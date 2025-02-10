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
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({ {import ="reiko.plugins"}},{
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  --Theme & Appearance
  'ellisonleao/gruvbox.nvim',
  'NLKNguyen/papercolor-theme', 
  {'rose-pine/neovim', name = 'rose-pine'},
  'projekt0n/github-nvim-theme',
  'sainnhe/sonokai', 
  'GustavoPrietoP/doom-themes.nvim',
  'nvim-tree/nvim-web-devicons',
  'Mofiqul/vscode.nvim',
  'catppuccin/nvim',
  --Funtionalities
  'echasnovski/mini.animate', 
  'MunifTanjim/nui.nvim', 
})

