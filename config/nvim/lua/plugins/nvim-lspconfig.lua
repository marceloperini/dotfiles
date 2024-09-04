local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- solargraph = {
        --   init_options = {
        --     formatting = false,
        --   },
        --   settings = {
        --     solargraph = {
        --       diagnostics = false,
        --     },
        --   },
        -- },
        ruby_lsp = {
          cmd = { "ruby-lsp" },
          filetypes = { "ruby" },
          root_dir = util.root_pattern("Gemfile", ".git"),
          init_options = {
            formatter = "false",
          },
        },
        -- rubocop = {
        --   cmd = { "bundle", "exec", "rubocop", "--lsp" },
        -- },
      },
    },
  },
}
