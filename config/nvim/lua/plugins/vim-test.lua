return {
  {
    "vim-test/vim-test",
    init = function()
      vim.keymap.set("n", "<leader>ct", ":TestFile<CR>", { desc = "Run tests" })
    end,
  },
}
