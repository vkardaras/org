---
id: lua functions
aliases:
  - lua functions
tags: []
---

# lua functions

```lua
local function hello(name)
    print("Hello!", name)
end

local greet = function(name)
    -- .. is string concatenation
    print("Greetings, " .. name .. "!")
end
```

## Function calling other function

```lua
local higher_order = function(value)
    return function(another)
        return value + another
    end
end

local add_one = higher_order(1)
print("add_one(2) -> ", add_one(2))
```

## Multiple returns

```lua
local returns_four_values = function()
    return 1, 2, 3, 4
end

first, second, last = returns_four_values()

print("first:", first)
print("second:", second)
print("last:", last)
-- the `4` is discarded
```

### With parameters

```lua
local variable_arguments = function( ... )
    local arguments = { ... }
    for i, v in ipairs({ ... }) do print(i, v) end
    return unpack(arguments)
end

print("================")
print("1:", variable_arguments("hello", "world", "!"))
print("================")
print("2:", variable_arguments("hello", "world", "!"), "<lost>")
```

## Functions calling

When there is only one argument you can omit the parenthesis

```lua
local single_string = function(s)
    return s .. " - WOW!"
end

local x = single_string("h1")
local y = single_string "h1"
print(x, y)
```

### With tables

```lua
local setup = function(opts)
    if opts.default == nil then
        opts.default = 17
    end

    print(opts.default, opts.other)
end

setup { default = 12, other = false }
setup { other = true }
```

## Colon functions

```lua
local MyTable = {}

function MyTable.something(self, ... ) end
function MyTable:something( ... ) end
```
