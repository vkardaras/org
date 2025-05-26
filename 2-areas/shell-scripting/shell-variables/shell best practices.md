---
id: shell best practices
aliases:
  - shell best practices
tags: []
---

# Shell base practices

## Quote your variables

Use `"$x"` instead of `$x`

No surprises when input contains spaces

Use double quotes

- keep meaning of dollar sign intact

Not necessary in zhs

- Zsh does not split variables in words
- Behaviour is configurable

## Braces

Where does your variable name end

`echo "${foo}bar"`

- prints value of var foo
- followed by string “bar”

`echo "$foobar"`

- prints value of foobar

[[export variables]]
