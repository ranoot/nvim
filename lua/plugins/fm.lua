return {
    { "nvim-tree/nvim-web-devicons", opts = {} },
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            default_file_explorer = true,
            keymaps = {
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
    }
}
