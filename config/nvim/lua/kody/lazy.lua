local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.opt.conceallevel = 1

require("lazy").setup({ { import = "kody.plugins" }, { import = "kody.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

--@DEDA indent-blankline
-- require('mini.indentscope').setup()
-- require("ibl").setup()

-- KEYMAPS
local keymap = vim.keymap
keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Opens Lazy" })
