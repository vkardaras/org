---
id: Basic Linux Commands
aliases: []
tags:
  - linux
---

Working with directories and files

```bash
# create parent directories if not exist
mkdir -p India/Mumbai

# remember the current directory before moving to the next directory
~ pushd /etc
/etc ~
/etc ~ cd /var
/var ~ cd /tmp
/tmp ~ popd
~

# copy directory recursively
cp -r Europe/UK Europe/UnitedKingdom

# print contents of a file
cat dir/file1.txt

# redirect input to a file
cat > test.txt
# end input text and save it to the file
ctrl-d
```

[[Linux Archive Files]]

List files

```bash
# list files in order created
ls -lt
# list files in the reverse order created
ls -ltr
```
