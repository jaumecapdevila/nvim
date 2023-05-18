local M = {}

-- the mapping <M-a> actually is for using the Alt key
-- for the mapping <M-a> actually is for using the Alt key

M.general = {
  n = {
    -- [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>qq"] = { "<cmd>qa<cr>", "Quit all" },
  },

  i = {
    ["jk"] = { "<ESC>", "escape insert mode" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "find media" },
  },
}

M.shade = {
  n = {
    ["<Bslash>"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>gc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand("%") .. " && ./out", "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>lg"] = { "<cmd>LazyGit<CR>", "   Lazygit" },
  },
}

return M
