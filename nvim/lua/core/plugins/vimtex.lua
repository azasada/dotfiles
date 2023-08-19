return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.cmd([[syntax on]])
        vim.cmd([[let maplocalleader = ' ']])
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_log_verbose = 1
        vim.g.vimtex_view_forward_search_on_start = 0
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_compiler_latexmk = {
            ["continuous"] = 0,
            ["options"] = {
                "-pdf",
                "-synctex=1",
                "-verbose",
                "-file-line-error",
                "-halt-on-error",
                "-interaction=nonstopmode",
            }
        }
    end
}