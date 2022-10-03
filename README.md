# cmp-gitcommit

`gitcommit` source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

`cmp-gitcommit` is a fork of [cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)

## Features

### Features that cmp-gitcommit provides but cmp-conventionalcommits

- no unregistered-source bug
- no npm dependencies

### Features that cmp-conventionalcommits provides but cmp-gitcommit

- commitlint support
- lerna support

### Sources that this plugin provides

This plugin provides

- types (`ci: 👷`, `ci`, `ci:`, etc)
- scopes (`Travisi`, `Circle`, `BrowserStack`, etc)
- tracked path object (`README.md`, `src`, `.gitignore`, etc)

sources for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

<details>
<summary>gif</summary>

![gif](https://github.com/Cassin01/cmp-gitcommit/blob/eef73658a6039b79c72533255235ed2c1e166fa9/asset/screen.gif)

</details>

## Usage

Packer
```lua
use 'hrsh7th/nvim-cmp'
use { 'Cassin01/cmp-gitcommit', after = { 'nvim-cmp' } }
```

```lua
require('cmp').setup {
  sources = require'cmp'.config.sources({{ name = 'gitcommit' }})
}
```

## Configuration
```lua
use {
   -- ...
   config = function()
     require('cmp-gitcommit').setup({
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
