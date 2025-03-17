-- lua/plugins/rose-pine.lua
return {
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("NeoSolarized").setup({
        transparent = true,
        styles = {
          functions = { bold = false },
        },
      })
    end,
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme nightfly")
    end,
  },
}
