return {
    "L3MON4D3/LuaSnip",
    version = "2.*",
    build = "make install_jsregexp",
    config = function()
        require("luasnip").config.set_config({
            history = false,
            enable_autosnippets = true,
            store_selection_keys = "<Tab>",
        })
    end,
}
