return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.prettier.with({
                    extra_args = { "--prose-wrap always", },
                }),
            },
        })

        vim.keymap.set("n", "<leader>fm", function() vim.lsp.buf.format { async = true } end, {})
    end,
}
