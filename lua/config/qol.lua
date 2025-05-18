-- Setting vim options
vim.opt.number = true
vim.opt.relativenumber = true

-- default vim opens left and up top which is weird
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- can set to 0 to be equal to tabstop

vim.opt.clipboard = "unnamedplus"

-- Possible to remove, just centers your cursor on the viewable lines
-- vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

-- shows the global changes preview in a small window (when using :s)
vim.opt.inccommand = "split"

-- neovim plugins must have Uppercase commands, this allows you to tab and find them
vim.opt.ignorecase = true

vim.opt.termguicolors = true

-- LSP configurations
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = { current_line = true },
})
