return {
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = {
        setup = function(ctx)
          if vim.fn.exists(":NoMatchParen") ~= 0 then
            vim.cmd([[NoMatchParen]])
          end
          Snacks.util.wo(0, { foldmethod = "manual", statuscolumn = "", conceallevel = 0 })
          vim.b.completion = false
          vim.b.minianimate_disable = true
          vim.b.minihipatterns_disable = true
          -- intentionally not setting vim.bo[ctx.buf].syntax: legacy regex
          -- syntax highlighting is what was making big YAML files slow
        end,
      },
    },
  },
}
