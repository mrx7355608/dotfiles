return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<c-s>", mode = { "n" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
    config = function()
        local flash = require("flash")
        flash.setup({
            modes = {
                search = {
                    enabled =true,
                }
            }
        })

        local keymap = vim.keymap;

        keymap.set({"n","x", "o"}, "sf", function() 
            flash.jump({ search = { forward = true, wrap = false, multi_window = false }}) 
        end, { desc = "Flash search for word (forwards)" })
        keymap.set({"n","x", "o"}, "sb", function() 
            flash.jump({ search = { forward = false, wrap = false, multi_window = false }}) 
        end, { desc = "Flash search for word (backwards)" })
    end
}
