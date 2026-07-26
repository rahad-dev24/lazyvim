-- Cap vtsls/tsserver memory usage.
-- Default maxTsServerMemory is 3072MB and vtsls runs a *second* tsserver
-- process (useSeparateSyntaxServer) for fast syntax highlighting, which
-- roughly doubles memory usage per project. Trim both to reduce RAM use.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 2048,
                useSyntaxServer = "never",
              },
            },
          },
        },
      },
    },
  },
}
