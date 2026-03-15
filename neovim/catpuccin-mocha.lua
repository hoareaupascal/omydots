return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- Change this to "latte", "frappe", or "macchiato"
      transparent_background = true, -- Set to true if you want your Ubuntu terminal background
      integrations = {
        telescope = true,
        neotree = true,
        treesitter = true,
        notify = true,
        mini = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
