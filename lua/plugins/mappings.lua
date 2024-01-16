-- AstroCore provides a central place to modify mappings set up as well as which-key menu titles
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("atsrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

        -- Disable shift based navigation to favor <C-u> and <C-d>
        ["<S-Up>"] = { "<Nop>" },
        ["<S-Down>"] = { "<Nop>" },

        -- Disable arrows navigation
        -- ["<Up>"] = { "<Nop>" },
        -- ["<Down>"] = { "<Nop>" },
        -- ["<Left>"] = { "<Nop>" },
        -- ["<Right>"] = { "<Nop>" },

        -- Jump to the end of line
        ["<C-e>"] = { "$" },

        -- Navigate splits
        ["<Tab>"] = { ":wincmd w<CR>", desc = "Switch to next window" },
        ["<C-Left>"] = { "<C-W>h", desc = "Jump to the left split" },
        ["<C-Right>"] = { "<C-W>l", desc = "Jump to the right split" },
        ["<C-Up>"] = { "<C-W>k", desc = "Jump to the up split" },
        ["<C-Down>"] = { "<C-W>j", desc = "Jump to the down split" },

        -- Create splits
        ["\\"] = { "<Nop>" },
        ["\\\\"] = { ":vsplit<CR>", desc = "Split vertically" },
        ["--"] = { "<cmd>split<CR>", desc = "Split horizontally" },

        -- Resize splits
        ["<C-S-Left>"] = { ":vertical :resize +2<CR>", desc = "Increase width of the split" },
        ["<C-S-Right>"] = { ":vertical :resize -2<CR>", desc = "Decrease width of the split" },
        ["<C-S-Up>"] = { ":resize +2<CR>", desc = "Increase height of the split" },
        ["<C-S-Down>"] = { ":resize -2<CR>", desc = "Decrease height of the split" },

        -- Horizontal scroll
        ["<z-Left>"] = { ":normal 5zh", desc = "Scroll left" },
        ["<z-Right>"] = { ":normal 5zl", desc = "Scroll right" },

        -- Quick scope and jumping to a char
        -- ["<leader>j"]  = { "<plug>(QuickScopeToggle)" },
      },
      v = {
        ["<C-e>"] = { "$" },

        -- Disable shift based navigation to favor <C-u> and <C-d>
        ["<S-Up>"] = { "<Nop>" },
        ["<S-Down>"] = { "<Nop>" },
      },
    },
  },
}
