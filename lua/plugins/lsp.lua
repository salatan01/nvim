return {

  { "akinsho/bufferline.nvim", enabled = false },
  {

    "neovim/nvim-lspconfig",

    opts = {

      -- This ensures Mason doesn't try to install these

      ensure_installed = {},

      -- This tells LazyVim how to set up your Nix-installed servers

      servers = {

        nixd = {}, -- Use your nixd from Nix

        rust_analyzer = {}, -- Use your rust-analyzer from Nix
      },

      setup = {

        -- This is the "Beast" move:

        -- It stops Mason from overriding your Nix-installed binaries

        rust_analyzer = function()
          return false -- Tell LazyVim not to use the default Mason setup for Rust
        end,
      },
    },
  },
}
