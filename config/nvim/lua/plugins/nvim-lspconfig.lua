local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
          filetypes = { "ruby" },
          root_dir = util.root_pattern("Gemfile", ".git"),
          init_options = {
            formatter = "false",
          },
        },
      },
    },
  },
}
