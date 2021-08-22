#!/bin/bash
# Blur and Darken wallpapers

ORIGINAL="./original"
MODIFIED="./modified"

SECONDS=0
FILES=$(ls -l "$ORIGINAL" | wc -l)
let COUNT=FILES-2

# loop through directories
for i in $( eval echo {0..$COUNT} )
do
    echo "Modifying $i.jpg"
    convert -brightness-contrast -3x2 -blur 6x2 "$ORIGINAL/$i.jpg" "$MODIFIED/$i.jpg"
done

msg="Finished in $((($SECONDS)/60))m $((($SECONDS)%60))s"
len=$((17+${#d}))
printf '=%.0s' `eval echo {1..$len}`
echo ""
echo $msg
printf '=%.0s' `eval echo {1..$len}`
echo ""
