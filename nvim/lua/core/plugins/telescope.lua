return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
        require("telescope").setup({
            defaults = {
                initial_mode = "normal",
                layout_config = {
                    horizontal = {
                        preview_cutoff = 0,
                    },
                },
            },
        })
        local builtin = require("telescope.builtin")
        local previewers = require("telescope.previewers")
        vim.keymap.set("n", "<Leader>f", builtin.find_files, {})
        vim.keymap.set("n", "<Leader>b", builtin.buffers, {})
        vim.keymap.set("n", "<Leader>g", builtin.live_grep, {})
        vim.keymap.set("n", "<Leader>cs", builtin.colorscheme, {})
    end,
}