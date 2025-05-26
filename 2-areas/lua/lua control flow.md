---
id: lua control flow
aliases:
  - lua control flow
tags: []
---

# lua control flow

## `for`

```lua
local favorite_accounts = { "teej_dv", "Theprimeagen", "terminaldotshop"}
for index = 1, #favorite_accounts do
    print(index, favorite_accounts[index])
end

for index, value in ipairs(favorite_accounts) do
    print(index, value)
end
```

With table maps we can use `pairs`

```lua
local reading_scores = { teej_dv = 9.5, Theprimeagen = "N/A" }
for index, value in pairs(reading_scores) do
    print(index, value)
end
```

## `if`

```lua
local function action(loves_coffee)
    if loves_coffee then
        print("Check out `ssh terminal.shop` - it's coll!")
    else
        print("Check out `ssh terminal.shop` - it's still coll!")
    end
end

-- "falsey": nil, false
action() -- Same as: action(nil)
action(false)

-- Everything else is "truthy"
action(true)
action(0)
action({})

```
