#!/bin/bash

# reads the companies file and counts the totals
awk '
    BEGIN { FS="," }
    { 
        amounts[$2]+=$4; 
        counts[$2]++
    }
    END { 
        for(i in amounts){ 
            print i, amounts[i]/counts[i]; 
        }
    }
' ./companies
