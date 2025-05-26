---
id: lua modules
aliases:
  - lua modules
tags: []
---

# lua modules

There isn't anything special about modules.
Modules are just files!

```lua
-- foo.lua
local M = {}
M.cool_function = function() end
return M
```

```lua
-- bar.lua
local foo = require('foo')
foo.cool_function()
```
