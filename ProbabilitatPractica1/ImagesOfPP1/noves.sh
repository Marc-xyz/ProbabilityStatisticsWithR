
for file in *.png; do convert -resize 800x600 -- "$file" "${file%%.png}_resized_60.png"; done
