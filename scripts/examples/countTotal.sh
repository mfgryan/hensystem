#!/bin/bash

cat $1 | awk '
    BEGIN { FS="," }
    { amounts[$2]+=$4; counts[$2]++}
    END { for(i in amounts) print i, amounts[i]/counts[i] }
'
