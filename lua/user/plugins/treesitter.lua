return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag"
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            },
            autotag = {
                enable = true
            },
            ensure_installed = {
                "json",
                "javascript",
                "html",
                "css",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "c",
                "cpp",
                "csv",
                "haskell",
                "java",
                "matlab",
                "python",
                "regex",
                "sql",
                "asm"
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>"
                }
            }
        })
    end
}