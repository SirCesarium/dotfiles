return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    opts = {
      background = "hard",
      contrast = "hard",
      transparent_background = 2,
      dim_inactive_windows = false,
      palette_overrides = {
        bg0 = "NONE",
        bg1 = "#000000",
        bg2 = "#050505",
        bg3 = "#0a0a0a",
        bg4 = "#101010",
        bg5 = "#151515",
        bg_visual = "#2a0000",
        bg_red = "#250000",
        bg_green = "#001500",
        bg_blue = "#000015",
        bg_yellow = "#151500",
        fg0 = "#eeeeee",
        fg1 = "#dddddd",
        fg2 = "#cccccc",
        fg3 = "#bbbbbb",
        red = "#cc4a3a",
        orange = "#d4675a",
        yellow = "#b47109",
        green = "#6a9a4a",
        blue = "#4a6a9a",
        purple = "#9a4a6a",
        aqua = "#4a9a8a",
        grey0 = "#666666",
        grey1 = "#555555",
        grey2 = "#444444",
        selection = "#3a0000",
      },
    },
    config = function(_, opts)
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_contrast = "hard"
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_dim_inactive_windows = 0

      for k, v in pairs(opts.palette_overrides) do
        vim.g["gruvbox_material_" .. k] = v
      end

      vim.g.terminal_color_0 = "#000000"
      vim.g.terminal_color_1 = "#cc4a3a"
      vim.g.terminal_color_2 = "#6a9a4a"
      vim.g.terminal_color_3 = "#b47109"
      vim.g.terminal_color_4 = "#4a6a9a"
      vim.g.terminal_color_5 = "#9a4a6a"
      vim.g.terminal_color_6 = "#4a9a8a"
      vim.g.terminal_color_7 = "#eeeeee"
      vim.g.terminal_color_8 = "#666666"
      vim.g.terminal_color_9 = "#d4675a"
      vim.g.terminal_color_10 = "#6a9a4a"
      vim.g.terminal_color_11 = "#b47109"
      vim.g.terminal_color_12 = "#4a6a9a"
      vim.g.terminal_color_13 = "#9a4a6a"
      vim.g.terminal_color_14 = "#4a9a8a"
      vim.g.terminal_color_15 = "#ffffff"

      vim.cmd.colorscheme("gruvbox-material")

      local hl_groups = {
        "Normal", "NormalFloat", "NormalNC", "NormalSB", "SignColumn", "SignColumnSB", "LineNr", "CursorLineNr",
        "EndOfBuffer", "MsgArea", "Pmenu", "TeleScopeBorder", "TelescopeNormal",
        "NvimTreeNormal", "NeoTreeNormal", "NeoTreeNormalNC", "Terminal"
      }
      for _, group in ipairs(hl_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
      end

      vim.api.nvim_create_autocmd("TermOpen", {
        callback = function()
          vim.opt_local.winhighlight = "Normal:Normal,NormalNC:Normal"
        end,
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
