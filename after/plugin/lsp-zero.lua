local lsp = require('lsp-zero')

lsp.on_attach(function (_, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'gopls', 'lua_ls', 'pyright', 'jsonls', 'html', 'htmx', 'nginx_language_server', 'sqls', 'yamlls'},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

