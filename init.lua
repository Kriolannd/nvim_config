require('plugins/packer_install')
require('mason').setup()
require('mason-lspconfig').setup()
require('base/search')
require('base/tabs')
require('base/other')
require('keys/alias')
require('keys/main')
require'lspconfig'.julials.setup{
    on_new_config = function(new_config, _)
        local julia = vim.fn.expand("~/.julia/environments/nvim-lspconfig/bin/julia")
        if require'lspconfig'.util.path.is_file(julia) then
	    vim.notify("Hello!")
            new_config.cmd[1] = julia
        end
    end
}
require'lspconfig'.pyright.setup{}

local pid = vim.fn.getpid()

local omnisharp_bin = "/usr/local/bin/omnisharp-roslyn/OmniSharp"

require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
    -- Additional configuration can be added here
}
