require("mason-lspconfig").setup({
      -- list of servers for mason to install
      ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "julials",
        "texlab"
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })
