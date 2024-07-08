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
