require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd",
	},
})

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

require("lspconfig")["clangd"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

