-- return {
--   {
--     "iamcco/markdown-preview.nvim",
--     build = function()
--       vim.fn["mkdp#util#install"]()     -- This installs the necessary dependencies
--     end,
--     ft = { "markdown" },                -- Load the plugin only for Markdown files
--     config = function()
--       vim.g.mkdp_auto_start = 0         -- Disable auto-start preview
--       vim.g.mkdp_auto_close = 1         -- Automatically close the preview when the buffer is closed
--       vim.g.mkdp_refresh_slow = 0       -- Enable fast refresh
--       vim.g.mkdp_command_for_global = 0 -- Preview only works for Markdown files
--       vim.g.mkdp_open_to_the_world = 0  -- Use localhost
--       -- vim.g.mkdp_browser = ""           -- Use the default browser
--       -- vim.g.mkdp_theme = "dark"         -- Set the preview theme to dark
--     end,
--   },
-- }


return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
