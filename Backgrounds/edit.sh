#!/bin/bash
# Blur and Darken wallpapers

ORIGINAL="./original"
SECONDS=0
FILES=$(ls -l "$ORIGINAL" | wc -l)
let COUNT=FILES-2

for i in $( eval echo {0..$COUNT} )
do
    echo "Modifying $i.jpg"
    convert -brightness-contrast -13x1 -blur 4x15 "$ORIGINAL/$i.jpg" "$i.jpg"
done

msg="Finished in $((($SECONDS)/60))m $((($SECONDS)%60))s"
len=$((17+${#d}))
printf '=%.0s' `eval echo {1..$len}`
echo ""
echo $msg
printf '=%.0s' `eval echo {1..$len}`
echo ""
