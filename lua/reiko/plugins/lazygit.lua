return {
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require("telescope").load_extension("lazygit")
  end,
  vim.keymap.set("n", "<leader>lg",":FloatermNew --name=lazygit Lazygit<CR>",{desc = "[L]azy[G]it", silent = true})
}
