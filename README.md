# cmp-gitcommit

`gitcommit` source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

forked from [cmp-conventionalcommits](https://github.com/davidsierradz/cmp-conventionalcommits)

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

## TODO

- [ ] Enable to use the configuration of `Cassin01/rcz`
