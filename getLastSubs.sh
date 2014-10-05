#!/bin/bash
# Use:
# ./getLastSubs.sh <#directory#> <#days to search#>
#Checks the last tv shows in folder and gets the last subtitle
#Require subliminal https://github.com/Diaoul/subliminal
echo "Start searching files in $1 $2 days"

find $1 -ctime -$2 -iname '*.mkv' -o -ctime -1 -iname '*.avi' -o -ctime -1 -iname '*.mp4' -exec subliminal -l en -- {} \;
