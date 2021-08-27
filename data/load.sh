
echo "Loading initial data..."

if [ -f "data.txt" ]; then
    echo "Found data.txt, starting initial data load."
    while read data; do
        # Do what you want to $data
        printf "\nStarting process with data: $data\n"
        curl -H "Content-Type:application/json" -H "Accept:application/json" -X POST http://localhost:8580/hiring -d "$data"
    done < data.txt
else
    echo "Cannot find data.txt, skipping initial data load."
fi