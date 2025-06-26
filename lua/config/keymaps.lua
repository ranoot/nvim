-- Keymap Settings

-- Oil (file manager/ netrw replacement) 
vim.keymap.set("n", "<leader>o", function() require("oil").open_float(nil, {preview = {split="belowright"}} ) end)

-- System clipboard keymaps
-- Make sure to have xclip or xsel installed to use these
vim.keymap.set({'n', 'v'}, "<leader>p", "\"+p")
vim.keymap.set({'n', 'v'}, "<leader>y", "\"+y")

vim.keymap.set('n', "<leader>yn", function ()
    vim.fn.setreg('+', vim.api.nvim_buf_get_name(0))
end)
