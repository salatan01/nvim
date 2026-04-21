return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- 1. Disable Mason for these specific servers
      servers = {
        nixd = { mason = false },
        rust_analyzer = { mason = false },
        pyright = { mason = false },
        clangd = { mason = false },
      },
      -- 2. Keep the fix for clangd
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
