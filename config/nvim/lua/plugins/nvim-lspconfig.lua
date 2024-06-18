return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        solargraph = {
          init_options = {
            formatting = false,
          },
          settings = {
            solargraph = {
              diagnostics = false,
            },
          },
        },
      },
    },
  },
}
