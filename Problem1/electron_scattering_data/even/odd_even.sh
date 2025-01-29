
mkdir -p odd even

n=1

for file in *; do
    if (( n % 2 == 0)); then
        mv "$file" ./odd/
    else
        mv "$file" ./even/
    fi
    ((n++))
done

echo "Files have successfully been sorted"