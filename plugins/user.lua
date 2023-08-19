return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in telescope" },
    },
    event = "User AstroFile",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function() require("nvim-ts-autotag").setup() end, -- TODO: maybe refactor
    event = "User AstroFile",
  },
  {
    "yasuhiroki/github-actions-yaml.vim",
    event = "User AstroFile",
    ft = { "yaml", "yml" },
  },
  {
    { "echasnovski/mini.nvim", version = false },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
        lsp = {
          signature = { enabled = false },
          hover = { enabled = false },
        },
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        -- "rcarriga/nvim-notify",
      },
    },
  },
}
