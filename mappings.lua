---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Copy / Paste
    ["<C-a>"] = { "gg<S-v>G", "Select all" },
    ["x"] = { '"_x', "Do not yank with x" },

    -- Split window
    ["sv"] = { ":split<Return><C-w>w", "Split veritcal" },
    ["ss"] = { ":vsplit<Return><C-w>w", "Split horizontal" },

    -- Diagnostics
    ["<C-'>"] = { ":ln<Return>", "Diagnostics jump next" },
    ["<leader>i"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Diagnostics jump next",
    },

    -- File edit
    ["<leader>w"] = { "<cmd>w<CR>", "Save" },

    -- Troubles
    ["<leader>ll"] = { "<cmd>TroubleToggle<CR>", "Open Trouble" },

    -- Todos
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find Todo" },

    -- Tests
    ["<leader>tt"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run file test",
    },
    ["<leader>to"] = {
      ":Neotest output<CR>",
      "Test output",
    },
    ["<leader>ts"] = {
      ":Neotest summary<CR>",
      "Test summary",
    },

    -- Debug
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Dedug UI",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Breakpoint",
    },
    ["<leader>ds"] = {
      function()
        require("dap").continue()
      end,
      "Start",
    },
    ["<leader>dn"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },

    -- Git
    ["<leader>gl"] = {
      ":Flog<CR>",
      "Git Log",
    },
    ["<leader>gf"] = {
      ":DiffviewFileHistory<CR>",
      "Git File History",
    },
    ["<leader>gc"] = {
      ":DiffviewOpen HEAD~2<CR>",
      "Git Last Commit",
    },
    ["<leader>gt"] = {
      ":DiffviewToggleFile<CR>",
      "Git Last Commit",
    },
  },
  t = {
    ["<C-\\>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
}

-- Comments
M.comment = {
  plugin = true,

  -- INFO toggle comment in both modes
  n = {
    ["<leader>c"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<leader>c"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}
-- more keybinds!

return M
