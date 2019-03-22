
## USAGE

### Read and Write to files on disk

```
$ ./replace-bytes.sh NUM_BYTES INFILE OUTFILE
```

### Read and Write to STDIN / STDOUT

```
$ cat INFILE | ./replace-bytes.sh NUM_BYTES > OUTFILE
```

## READING FROM STDIN / STDOUT

Normal 1-byte or ASCII file:

```
josh@carbon:~$ cat foo
the "replace-bytes.sh" script can read either from (1) a file specified on command line or (2) STDIN

the script can also print out to (1) STDOUT or (2) a file supplied at the CLI
```

Convert to 2-byte UTF-8:

```
josh@carbon:~$ cat foo | ./replace-bytes.sh 2
ţɦé "ŕéƥȴáćé-ƅϒţéś.śɦ" śćŕɨƥţ ćáȵ ŕéáđ éɨţɦéŕ ƒŕȯɱ (1) á ƒɨȴé śƥéćɨƒɨéđ ȯȵ ćȯɱɱáȵđ ȴɨȵé ȯŕ (2) śţđɨȵ

ţɦé śćŕɨƥţ ćáȵ áȴśȯ ƥŕɨȵţ ȯũţ ţȯ (1) śţđȯũţ ȯŕ (2) á ƒɨȴé śũƥƥȴɨéđ áţ ţɦé ćȴɨ
```

Convert to 3-byte UTF-8:

```
josh@carbon:~$ cat foo | ./replace-bytes.sh 3
ছঋঈ "ঙঈগওঀআঈ-অঠছঈচ.চঋ" চআঙঌগছ আঀক ঙঈঀই ঈঌছঋঈঙ উঙখঔ (1) ঀ উঌওঈ চগঈআঌউঌঈই খক আখঔঔঀকই ওঌকঈ খঙ (2) চছইঌক

ছঋঈ চআঙঌগছ আঀক ঀওচখ গঙঌকছ খজছ ছখ (1) চছইখজছ খঙ (2) ঀ উঌওঈ চজগগওঌঈই ঀছ ছঋঈ আওঌ
```

Convert to 4-byte UTF-8:

```
josh@carbon:~$ cat foo | ./replace-bytes.sh 4
㐭㐹㐼 "㐯㐼㐱㐵㐌㐜㐼-㐖㐨㐭㐼㐮.㐮㐹" 㐮㐜㐯㐸㐱㐭 㐜㐌㐳 㐯㐼㐌㐽 㐼㐸㐭㐹㐼㐯 㐻㐯㐲㐴 (1) 㐌 㐻㐸㐵㐼 㐮㐱㐼㐜㐸㐻㐸㐼㐽 㐲㐳 㐜㐲㐴㐴㐌㐳㐽 㐵㐸㐳㐼 㐲㐯 (2) 㐮㐭㐽㐸㐳

㐭㐹㐼 㐮㐜㐯㐸㐱㐭 㐜㐌㐳 㐌㐵㐮㐲 㐱㐯㐸㐳㐭 㐲㐬㐭 㐭㐲 (1) 㐮㐭㐽㐲㐬㐭 㐲㐯 (2) 㐌 㐻㐸㐵㐼 㐮㐬㐱㐱㐵㐸㐼㐽 㐌㐭 㐭㐹㐼 㐜㐵㐸
```

## READING AND WRITING TO FILE

Normal 1-byte or ASCII file:

```
josh@carbon:~$ cat foo
the "replace-bytes.sh" script can read either from (1) a file specified on command line or (2) STDIN

the script can also print out to (1) STDOUT or (2) a file supplied at the CLI
```

Convert to 2-byte UTF-8:

```
josh@carbon:~$ ./replace-bytes.sh 2 foo bar
josh@carbon:~$ cat bar
ţɦé "ŕéƥȴáćé-ƅϒţéś.śɦ" śćŕɨƥţ ćáȵ ŕéáđ éɨţɦéŕ ƒŕȯɱ (1) á ƒɨȴé śƥéćɨƒɨéđ ȯȵ ćȯɱɱáȵđ ȴɨȵé ȯŕ (2) śţđɨȵ

ţɦé śćŕɨƥţ ćáȵ áȴśȯ ƥŕɨȵţ ȯũţ ţȯ (1) śţđȯũţ ȯŕ (2) á ƒɨȴé śũƥƥȴɨéđ áţ ţɦé ćȴɨ
```