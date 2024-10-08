require'window-picker'.setup({
    autoselect_one = false,
    include_current = false,
    filter_rules = {
        bo = {
            filetype = {'neo-tree', "neo-tree-popup", "notify"},
            buftype = {'terminal', "quickfix"}
        }
    },
    other_win_hl_color = '#e35e4f'
})

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "󰌵", texthl = "DiagnosticSignHint"})
      vim.fn.sign_define("GitSignsAdd",
        {text = " ", texthl = "GitSignsAdd"})
      vim.fn.sign_define("GitSignsChange",
        {text = " ", texthl = "GitSignsChange"})

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
                ".git",
            },
        },
        icons = {
            default = "",
            symlink = "",
            git = {
                staged = "",
                unstaged = "",
                untracked = "",
                deleted = "",
                ignored = "",
            },
            folder = {
                default = "",
                open = "",
            },
        },
    }
})
