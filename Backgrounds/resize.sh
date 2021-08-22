#!/bin/bash
# resize image to be smaller

SECONDS=0
for img in ./*.jpg
do
    echo "Resizing $img"
    SAVE_FILE=$(echo "$img" | sed -e 's/^\.\/\(.\)/\.\/resized-\1/')
    convert "$img" -resize 1920x "$SAVE_FILE"
done

msg="Finished in $((($SECONDS)/60))m $((($SECONDS)%60))s"
len=$((18+${#d}))

printf '=%.0s' `eval echo {1..$len}`
echo ""
echo $msg
printf '=%.0s' `eval echo {1..$len}`
echo ""
