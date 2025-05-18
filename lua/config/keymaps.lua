-- Keymap Settings

-- Oil (file manager/ netrw replacement) 
vim.keymap.set("n", "<leader>o", function() require("oil").open_float(nil, {preview = {split="belowright"}} ) end)
