---
id: create shell script
aliases: []
tags: []
---


# Creating a first script

```bash
nano create_report.sh
```

```bash
mkdir -p reports
grep H6 shipments.csv > reports/H6.csv

echo Report created.
```

List the permissions of the script.

```bash
$ ls -l create_report.sh
-rw-r--r-- 1 vasilis vasilis 53 Φεβ  18 23:57 create_report.sh
```

Make the script executable and check the permissions again

```bash
$ chmod u+x create_report.sh
$ ls -l create_report.sh
-rwxr--r-- 1 vasilis vasilis 53 Φεβ  18 23:57 create_report.sh
```

Run the script

```Shell
./create_report.sh
```

Check the result

```bash
$ cat reports/H6.csv
123,H6,Eggplant - Regular,1411,2020-06-11T21:19:18Z
541,H6,Peppercorns - Green,886,2020-06-23T23:57:33Z
693,H6,Puree - Raspberry,1451,2020-06-23T09:03:58Z
947,H6,Phyllo Dough,967,2020-06-11T11:40:36Z
```

Declare that the script will run in bash shell and add comments

```bash
#!/bin/bash

# Create a report file for a single shipping container
# Author: vkardaras

mkdir -p reports
grep H6 shipments.csv > reports/H6.csv

echo Report created.
```

## Making your script executable

```bash
# Executable for owner only
chmod u+x filename

# Executable for everyone
chmod a+x filename

# Remove executable permission
chmod a-x filename

# For more about permissions see http://goo.gl/3TcY73
```
