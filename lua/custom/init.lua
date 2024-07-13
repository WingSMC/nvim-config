-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END
]])
vim.cmd('set number')
vim.cmd('set relativenumber')

vim.keymap.set('s', '<Tab>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

vim.keymap.set('i', '<C-Tab>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})

-- vim.g.copilot_no_tab_map = true

