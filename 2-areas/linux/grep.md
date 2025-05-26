---
id: grep
aliases:
  - grep
tags: []
---

# grep

## Search for a word in a file

```bash
grep someword fake_logs.txt
```

## Pipe output to grep

```bash
cat fake_logs.txt | grep someword
```

## Search for a word in multiple files

```bash
grep div *.html
```

## Count occurrences of a word in multiple files

```bash
grep div *.html -c
```

## Grep with case insensitive

```bash
grep div *.html -i
```

## Show lines that do not match

```bash
grep div *.html -v
```

## Much for hole lines

```bash
grep -x "</html>" *.html
```

## Much for hole word

```bash
grep -w iv *.html
```

## Much flags in man pages

```bash
man lsof | grep -- '-a'
man lsof | grep -e '-a'
```

## Print lines before and after much

```bash
# print 3 lines before much 'iv'
grep -w -B 3 iv *.html

# print 3 lines after much 'iv'
grep -w -A 3 iv *.html
```

## Grep with regex

```bash
# much a line starting with matching word
cat dockerfile | grep '^FROM'

# much a line ending with matching word
cat dockerfile | grep '80$'

# complex regex, much all tags
cat index.html | grep '^<.*>$'

# much words starting with word 'iv'
grep '\biv' *.html

# check for 404 errors
grep '\b404\b' fake_logs.txt

# check for 404 and 500 errors
grep '404\|500' fake_logs.txt
grep -E '404|500' fake_logs.txt

# much errors from 400 to 499
grep ' 4[0-9][0-9] ' fake_logs.txt
```
