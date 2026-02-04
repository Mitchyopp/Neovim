return {
    'IogaMaster/neocord',
    event = "VeryLazy",
    config = function()
        require("neocord").setup({
            -- logo_tooltip = "...",
            global_timer = true,
            terminal_text = "Terminal :D",
        })
    end,
}
