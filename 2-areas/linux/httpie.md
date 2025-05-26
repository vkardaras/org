---
id: httpie
aliases:
  - httpie
tags: []
---

# httpie

```bash
# call endpoint
https httpie.io/hello
```

## Authentication

```bash
# basic
http -a username:password pie.dev/basic-auth/username/password

# bearer
https -A bearer -a token pie.dev/bearer
```
