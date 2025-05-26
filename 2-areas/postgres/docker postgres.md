---
id: docker postgres
aliases:
  - docker postgres
tags: []
---

# docker postgres

## example file

```yml
services:
  postgres:
    container_name: postgres
    image: postgres
    hostname: localhost
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: test-db
    volumes:
      - postgres-data:/var/lib/postgresql/data
    ports:
      - "5432:5432"
    restart: unless-stopped

volumes:
  postgres-data:
```
