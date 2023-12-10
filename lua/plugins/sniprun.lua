require("sniprun").setup({

    display = {
        "VirtualText",
    },

    repl_enable = {'Mathematica_original', 'Python3_original'},
    interpreter_options = {
        Mathematica_original = {
            use_javagraphics_if_contains = {'Plot', 'SomeCustomPlt'}, -- a pattern that need <<JavaGraphics
            keep_plot_open_for = 3600,    -- a positive integer -> how many seconds to keep the plot window open
        },
    },

})
