return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"},

                auto_install = true,

                highlight = {
                    enable = true,
                },

                incremental_selection = { 
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>si", -- "selection start set to `false` to disable one of the mappings 
                        node_incremental = "<Leader>sp", -- "selection plus"
                        scope_incremental = "<Leader>sc",-- "selction change/ (scope)"
                        node_decremental = "<Leader>sm", -- "selection minus"
                    },
                },

                textobjects = {
                    select = {
                      enable = true,
                
                      -- Automatically jump forward to textobj, similar to targets.vim
                      lookahead = true,
                
                      keymaps = {
                        -- You can use the capture groups defined in textobjects.scm or many others like locals.csm 
                        -- You can check by using :TSEditQuery <tab (to see your options)>
                          ["af"] = { query =  "@function.outer", desc = "Select outer part of function region"},
                          ["if"] = { query =  "@function.inner", desc = "Select inner part of a function region" },
                          ["ac"] = { query =  "@class.outer", desc = "Select outer part of class region" },
                          ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                          ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                      },
                      -- Can be a function returning the 3 modes ('v', 'V', '<c-v>') also
                      -- Default is all 'v' (Maybe should leave it as that lol)
                      selection_modes = {
                          ['@parameter.outer'] = 'v', -- charwise
                          ['@function.outer'] = 'v', -- linewise
                          ['@class.outer'] = 'v', -- blockwise
                      },
                      -- Same deal as above, [some capture group] -> (true|false), can be a table or a function
                      -- And apparently you can leave it as just true or false also
                      include_surrounding_whitespace = true,
                    },
                }
            })
        end,
    },
    {
       "nvim-treesitter/nvim-treesitter-textobjects",
    },
}

