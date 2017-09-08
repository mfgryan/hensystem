#!/bin/bash

# prints all unique programs for each given minute
awk '
    BEGIN { FS=" " }
    { 
        split($4,a,":")
        split($5,p,"[")
        times[a[2],p[1]]++
    }
    END {
        for(ij in times){
            split(ij, indicies, SUBSEP);
            i=indicies[1];
            j=indicies[2];
            output[i] = output[i] j " "
        }

        for(k in output){
            print k, output[k] 
        }
    }
' ./programTimes | sort -n
