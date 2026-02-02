return {
    {
	"nvim-mini/mini.nvim",
	config = function()
        -- Text editing
	    require("mini.completion").setup()
	    require("mini.move").setup()
	    require("mini.pairs").setup()
	    require("mini.splitjoin").setup()
	    require("mini.surround").setup()
        -- General workflow
        require("mini.bracketed").setup()
        require("mini.clue").setup()
        require("mini.cmdline").setup()
        require("mini.diff").setup()
        require("mini.jump").setup()
        require("mini.jump2d").setup()
        -- Appearance
        require("mini.cursorword").setup()
        local hipatterns = require("mini.hipatterns")
          hipatterns.setup({
            highlighters = {
              fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
              hack  = { pattern = "%f[%w]()HACK()%f[%W]",  group = "MiniHipatternsHack"  },
              todo  = { pattern = "%f[%w]()TODO()%f[%W]",  group = "MiniHipatternsTodo"  },
              note  = { pattern = "%f[%w]()NOTE()%f[%W]",  group = "MiniHipatternsNote"  },

              hex_color = hipatterns.gen_highlighter.hex_color(),
            },
          })
        require("mini.statusline").setup()
        require("mini.icons").setup()
        require("mini.indentscope").setup()
        require("mini.notify").setup()
        require("mini.starter").setup()
        require("mini.tabline").setup()
        require("mini.trailspace").setup()
	end,
    },
}
