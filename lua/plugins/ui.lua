return {
  -- 1. Configure Catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- Your requested flavor
      transparent_background = true, -- Crucial for Niri/Ghostty
      term_colors = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "rosewater",
        },
      },
    },
  },

  -- 2. Set Catppuccin as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- 3. UI Minimalism: Disable the intrusive "noice" popup for messages
  -- (Optional: keep it if you like the command line in the center)
  {
    "folke/noice.nvim",
    opts = {
      views = {
        cmdline_popup = {
          position = { row = 5, col = "50%" },
          size = { width = 60, height = "auto" },
        },
        popupmenu = {
          relative = "editor",
          position = { row = 8, col = "50%" },
          size = { width = 60, height = 10 },
          border = { style = "rounded", padding = { 0, 1 } },
          win_options = { winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" } },
        },
      },
    },
  },
}
