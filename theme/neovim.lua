return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#041419", -- Default background
                base01 = "#458195", -- Lighter background (status bars)
                base02 = "#041419", -- Selection background
                base03 = "#458195", -- Comments, invisibles
                base04 = "#DFBBCE", -- Dark foreground
                base05 = "#fdf9fb", -- Default foreground
                base06 = "#fdf9fb", -- Light foreground
                base07 = "#DFBBCE", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a78181", -- Variables, errors, red
                base09 = "#ceb6b6", -- Integers, constants, orange
                base0A = "#BCA961", -- Classes, types, yellow
                base0B = "#8ba7ad", -- Strings, green
                base0C = "#a8d3e9", -- Support, regex, cyan
                base0D = "#9ca0b9", -- Functions, keywords, blue
                base0E = "#c2a3bf", -- Keywords, storage, magenta
                base0F = "#dace9f", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
