---
id: linux check virtualization
aliases:
  - linux check virtualization
tags:
  - linux virtualization
---

# linux check virtualization

## Check if the system supports virtualization

```bash
egrep -c '(vmx|svm)' /proc/cpuinfo
```

If it us above zero virtualization is supported
