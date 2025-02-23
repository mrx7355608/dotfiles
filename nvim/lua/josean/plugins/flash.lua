return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
    config = function()
        local keymap = vim.keymap;
        local flash = require("flash")

        flash.toggle() -- integrate with / ? searches

        keymap.set({"n","x", "o"}, "<leader>sf", function() 
            flash.jump({ search = { forward = true, wrap = false, multi_window = false }}) 
        end, { desc = "Flash search for word (forwards)" })
        keymap.set({"n","x", "o"}, "<leader>sb", function() 
            flash.jump({ search = { forward = false, wrap = false, multi_window = false }}) 
        end, { desc = "Flash search for word (backwards)" })
    end
}
