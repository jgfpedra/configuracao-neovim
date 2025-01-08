return {
	{
	  "echasnovski/mini.pairs",
	  event = "VeryLazy",
	  opts = {
	    modes = { insert = true, command = true, terminal = false },
	    -- skip autopair when next character is one of these
	    skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
	    -- skip autopair when the cursor is inside these treesitter nodes
	    skip_ts = { "string" },
	    -- skip autopair when next character is closing pair
	    -- and there are more closing pairs than opening pairs
	    skip_unbalanced = true,
	    -- better deal with markdown code blocks
	    markdown = true,
	  },
	  config = function(_, opts)
	  end,
	},
	{
	  "folke/lazydev.nvim",
	  ft = "lua",
	  cmd = "LazyDev",
	  opts = {
	    library = {
	      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	      { path = "LazyVim", words = { "LazyVim" } },
	      { path = "snacks.nvim", words = { "Snacks" } },
	      { path = "lazy.nvim", words = { "LazyVim" } },
	    },
	  },
	}
}
