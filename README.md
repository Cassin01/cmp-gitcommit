# cmp-gitcommit

`gitcommit` source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

forked from [cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)

<details>
<summary>gif</summary>

![gif](https://github.com/Cassin01/cmp-gitcommit/blob/7e71945599a6c0db6caeb4b2045986af976d55ad/asset/commit.gif)

</details>

## Usage

Packer
```lua
use 'hrsh7th/nvim-cmp'
use { 'Cassin01/cmp-gitcommit', after = { 'nvim-cmp' } }
```

```lua
require('cmp').setup {
  sources = {
    { name = 'gitcommit' }
  }
}
```

## Configuration

```lua
use {
  -- ...
  config = function()
    require('gitsigns').setup({
      typesDict = {
        ci = {
          label = 'ci',
          emoji = '👷',
          documentation = 'Changes to our CI configuration files and scripts',
          scopes = {'Travisi', 'Circle', 'BrowserStack', 'SauceLabs'} -- FEATURE custom scopes !!
        }
        style = {
          label = 'style',
          emoji = '🎨',
          documentation = 'Changes that do not affect the meaning of the code',
        }
        test = {
          label = 'test',
          emoji = '🚨',
          documentation = 'Adding missing tests or correcting existing tests',
        }
        -- ...
      }
      insertText = function(label, emoji) return label .. ":" .. emoji .. ' ' end
    })
  end
}
```

## Forked from:

[cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)

