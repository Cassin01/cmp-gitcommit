local source = {}

local typesDict = {}
typesDict['build'] = {
  label = 'build',
  documentation = 'Changes that affect the build system or external dependencies',
}
typesDict['chore'] = {
  label = 'chore',
  documentation = 'Other changes that dont modify src or test files',
}
typesDict['ci'] = {
  label = 'ci',
  documentation = 'Changes to our CI configuration files and scripts',
}
typesDict['docs'] = {
  label = 'docs',
  documentation = 'Documentation only changes',
}
typesDict['feat'] = {label = 'feat', documentation = 'A new feature'}
typesDict['fix'] = {label = 'fix', documentation = 'A bug fix'}
typesDict['perf'] = {
  label = 'perf',
  documentation = 'A code change that improves performance',
}
typesDict['refactor'] = {
  label = 'refactor',
  documentation = 'A code change that neither fixes a bug nor adds a feature',
}
typesDict['revert'] = {
  label = 'revert',
  documentation = 'Reverts a previous commit',
}
typesDict['style'] = {
  label = 'style',
  documentation = 'Changes that do not affect the meaning of the code',
}
typesDict['test'] = {
  label = 'test',
  documentation = 'Adding missing tests or correcting existing tests',
}

source.new = function()
  return setmetatable({}, { __index = source })
end

source.is_available = function()
  return vim.bo.filetype == 'gitcommit'
end

source.get_debug_name = function()
  return 'gitcommit'
end

source.get_keyword_pattern = function()
return [[\w\+]]
end

source.complete = function(self, request, callback)
  if request.context.cursor.row ~= 1 or request.context.cursor.col ~= 1 then
    return callback()
  end
  local candidates = self:_get_candidates()
  local items = {}
  callback({
    items = items,
    isIncomplete = true,
  })
end

function source:_get_candidates(entries)
  local items = {}
   for k, v in ipairs(entries) do
    items[k] = {
      label = v.label,
      kind = require('cmp').lsp.CompletionItemKind.Keyword,
      documentation = v.documentation,
    }
  end
  return items
end

 return source
