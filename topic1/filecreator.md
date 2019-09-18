The code below creates files inside a folder
===========================================

```sh
#!/bin/bash

#This program creates files inside a folder

echo "Create the folder"
mkdir test

#entering the folder
cd test

#creating 100 files
for (( f=0; f<100; f++ ))
do
    echo "Creating file $f"
    echo "Message #$f" > file_$f.txt
done
```
