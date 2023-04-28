#!/bin/bash

SRC_FILES=$(ls *.c)

for SRC_FILE in $SRC_FILES; do
    gcc -Wall -Werror -Wextra -pedantic -c $SRC_FILE
done

ar rcs liball.a *.o

rm *.o