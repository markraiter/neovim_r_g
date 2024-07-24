local wk = require("which-key")
wk.add({
  -- Group: Find
  { "<leader>f", group = "Find" },
  { "<leader>ff", desc = "Find File" },
  { "<leader>fb", desc = "Find Buffer" },
  { "<leader>fh", desc = "Find Help" },
  { "<leader>fw", desc = "Find Text" },

  -- Group: NeoTree
  { "<leader>e", group = "NeoTree" },
  { "<leader>ee", "<cmd>:Neotree float reveal<cr>", desc = "Float Reveal" },
  { "<leader>eE", "<cmd>:Neotree left reveal<cr>", desc = "Left Reveal" },

  -- Misc
  { "<leader>o", "<cmd>:Neotree float git_status<cr>", desc = "Git status" },
  { "<leader>x", "<cmd>:BufferLinePickClose<cr>", desc = "Close Buffer" },
  { "<leader>X", "<cmd>:BufferLineCloseRight<cr>", desc = "Close Buffer Right" },
  { "<leader>s", "<cmd>:BufferLineSortByTabs<cr>", desc = "Sort Buffers" },
  { "<leader>w", "<cmd>:w<cr>", desc = "Save" },
  { "<leader>q", "<cmd>:q<cr>", desc = "Quit" },
  { "<leader>h", "<cmd>:nohlsearch<cr>", desc = "No highlight" },

  -- Group: Git
  { "<leader>g", group = "Git" },
  { "<leader>gb", desc = "Branches" },
  { "<leader>gc", desc = "Commits" },
  { "<leader>gs", desc = "Status" },

  -- Group: Comment
  { "<leader>c", group = "Comment" },
  { "<leader>cl", desc = "Comment Line" },

  -- Group: LSP
  { "<leader>l", group = "LSP" },
  { "<leader>ld", desc = "Diagnostic" },
  { "<leader>lD", desc = "Hover Diagnostic" },
  { "<leader>lf", desc = "Format" },
  { "<leader>lr", desc = "Rename" },
  { "<leader>la", desc = "Action" },
  { "<leader>ls", desc = "Symbol" },

  -- Group: Paste
  { "<leader>p", group = "Paste" },
  { "<leader>pp", desc = "Paste After", hidden = true },
  { "<leader>pP", desc = "Paste Before", hidden = true },

  -- Group: Yank
  { "<leader>y", group = "Yank" },
  { "<leader>yy", desc = "Yank", hidden = true },
  { "<leader>yY", desc = "Yank Line", hidden = true },

  -- Group: Terminal
  { "<leader>t", group = "Terminal" },
  { "<leader>tf", "<cmd>:ToggleTerm direction=float<cr>", desc = "Float" },
  { "<leader>tt", "<cmd>:ToggleTerm direction=horizontal<cr>", desc = "Horizontal" },
  { "<leader>tv", "<cmd>:ToggleTerm direction=vertical size=40<cr>", desc = "Vertical" },

  -- Group: Debug
  { "<leader>b", group = "Debug" },
  { "<leader>bp", "<cmd>:DapToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
  { "<leader>bx", "<cmd>:DapTerminate<cr>", desc = "Terminate" },
  { "<leader>bo", "<cmd>:DapStepOver<cr>", desc = "Step Over" },

}, { prefix = "<leader>" })
