-- not to read twice
if vim.g.cmp_gitcommit_source_id ~= nil then
    require('cmp').unregister_source(vim.g.cmp_gitcommit_source_id)
end

vim.g.cmp_gitcommit_source_id = require('cmp').register_source('gitcommit', require('cmp-gitcommit').new())
