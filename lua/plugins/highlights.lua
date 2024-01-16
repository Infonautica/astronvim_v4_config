-- if true then return {} end -- REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { QuickScopePrimary = "#ff0000" },
        QuickScopePrimary = { bg = "#ff4466" },
        QuickScopeSecondary = { bg = "#ffff00" },
      },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
  },
}
