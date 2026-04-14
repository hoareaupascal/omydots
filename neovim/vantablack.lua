return {
  {
    "bjarneo/vantablack.nvim",
    priority = 1000,
    config = function()
      -- 1. Define the transparency logic
      local function set_transparency()
        local groups = {
          "Normal", "NormalNC", "LineNr", "Folded", 
          "NonText", "SpecialKey", "VertSplit", 
          "SignColumn", "EndOfBuffer", "NormalFloat",
          "FloatBorder", "Pmenu", "TelescopeNormal", "TelescopeBorder"
        }
        for _, group in ipairs(groups) do
          vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
        end
      end

      -- 2. Create an autocmd so it stays transparent if you reload the theme
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "vantablack",
        callback = set_transparency,
      })

      -- 3. Load the theme
      vim.cmd("colorscheme vantablack")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vantablack",
    },
  },
}