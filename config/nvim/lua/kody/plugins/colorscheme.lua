return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option_value("background", "dark", {})
      vim.cmd([[colorscheme catppuccin]])
      -- vim.cmd('colorscheme github_dark')
    end,
    set_light_mode = function()
      vim.api.nvim_set_option_value("background", "light", {})
      -- vim.cmd([[colorscheme catppuccin]])
      -- vim.cmd('colorscheme github_light')
      vim.cmd [[colorscheme tokyonight-day]]
    end,
  },
}
