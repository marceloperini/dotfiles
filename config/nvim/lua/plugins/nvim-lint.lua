local status, nvim_lint = pcall(require, "lint")
if not status then
  return
end

nvim_lint.linters_by_ft = {
  ruby = {"standardrb",},
  javascript = {"eslint",}

}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    nvim_lint.try_lint()
  end,
})
