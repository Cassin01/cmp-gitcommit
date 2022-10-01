# cmp-gitcommit

gitcommit source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

**This project is still work in progress. unstable.**

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

## Reference

[cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)
