#!/bin/bash

URL="https://en.wikipedia.org/wiki/Category:Software_companies_based_in_California"

wget -qO- $URL | awk '
    /^\<li\>/ {print $0;}
' | sed 's/^.*title="\([^"]*\)".*$/\1/g'
