# cmp-gitcommit

`gitcommit` source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

`cmp-gitcommit` is a fork of [cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)

## Features

### Features that cmp-gitcommit provides but cmp-conventionalcommits

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
  sources = require'cmp'.config.sources({{ name = 'gitcommit' }})
}
```
