local wk = require("which-key")

-- wk.register({
--     f = {
--         name = "Find",
--         f = {"Find File"},
--         b = {"Find Buffer"},
--         h = {"Find Help"},
--         w = {"Find Text"}
--     },
--     e = {"File Manager"},
--     o = {"Git status"},
--     x = {"Close Buffer"},
--     w = {"Save"},
--     h = {"No highlight"},
--     g = {name = "Git", b = "Branches", c = "Commits", s = "Status"},
--     c = {name = "Comment", l = "Comment Line"},
--     l = {
--         name = "LSP",
--         d = "Diagnostic",
--         D = "Hover diagnostic",
--         f = "Format",
--         r = "Rename",
--         a = "Action",
--         s = "Symbol"
--     }
-- }, {prefix = "<leader>"})

wk.add({
    { "<leader>f", group = "Find" },
    { "<leader>e", group = "File Manager" },
    { "<leader>o", group = "Git" },
    { "<leader>x", group = "Close Buffer" },
    { "<leader>w", group = "Save" },
    { "<leader>h", group = "No highlight" },
    { "<leader>g", group = "Git" },
    { "<leader>c", group = "Comment" },
    { "<leader>l", group = "LSP" }
})
