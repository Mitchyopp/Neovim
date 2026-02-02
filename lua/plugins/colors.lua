return {
    {
	"rebelot/kanagawa.nvim",
	config = function()
	    require('kanagawa').setup({
		commentstyle = { italic = true },
		transparent = true,
		terminalcolors = true,
		theme = "dragon",
	    })
	    vim.cmd.colorscheme('kanagawa')
	end,
    },

    {
	"datsfilipe/vesper.nvim",
	config = function()
	    require('vesper').setup({
		transparent = true,
	    })
	    -- vim.cmd.colorscheme('vesper')
	end,
    },
}
-- go to /lua/config/options && find vim.opt.colourscheme to change it.
