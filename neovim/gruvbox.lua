return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,    -- Load immediately
    priority = 1000, -- Load before all other plugins
    config = function()
      -- Put your setup call here!
      require("gruvbox").setup({
        terminal_colors = true,
        transparent_mode = true, -- The key for transparency
        -- ... keep the rest of your settings here
      })
      
      -- Load the colorscheme after setup
      vim.cmd("colorscheme gruvbox")
    end,
  },
}