return {
    { "nvim-tree/nvim-web-devicons", opts = {} },
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            default_file_explorer = true,
            delete_to_trash = true;
            keymaps = {
                ["yd"] = { function () vim.fn.setreg("+", require("oil").get_current_dir()) end, mode = 'n', },
            },
            float = {
                max_height = 0.7,
                max_width = 0.8,
            },
            view_options = {
                show_hidden = true,
                natural_order = true,
            },
        },
        -- Optional dependencies
        -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
    -- Using telescope!
    {
        "nvim-lua/plenary.nvim"
    },
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim', 'stevearc/oil.nvim' },
        config = function ()
            local builtin = require('telescope.builtin')
            -- vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope (F)ind (F)iles' })
            vim.keymap.set('n', '<leader>ff', function ()
                local curdir = require('oil').get_current_dir()
                if curdir=="" then
                    local bufname = vim.api.nvim_buf_get_name(0);
                    curdir = vim.fn.fnamemodify(bufname, ":h");
                end
                if curdir=="" then
                    curdir = vim.fn.getcwd()
                end

                builtin.find_files({ cwd = curdir })
            end, { desc = 'Telescope find files in current Oil directory' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope find document symbols' })
            vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Telescope find marks' })
            vim.keymap.set('n', '<leader>fh', function ()
               require("telescope.builtin").find_files({ hidden = true }) 
            end, { desc = 'Telescope (F)ind (H)idden' })
        end
    },
}
