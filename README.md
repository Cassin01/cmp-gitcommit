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

## Forked from:

[cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)
