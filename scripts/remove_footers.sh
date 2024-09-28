#!/bin/bash

# Directory containing HTML files
DIR="/home/paulgrey/Templates/electricitedjBAK"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Directory not found!"
    exit 1
fi

# Loop through all HTML files in the directory
for input_file in "$DIR"/*.html; do
    # Get the base name of the file (without the directory path)
    base_name=$(basename "$input_file")

    # Remove everything between <footer class="site-footer"> and </footer>
    # but keep the <footer> and </footer> tags themselves
    sed -n '/<footer class="site-footer">/{
            p;  # Print the opening tag
            :a; # Start a label
            N;  # Append the next line
            /<\/footer>/!ba;  # If </footer> is not found, repeat (loop)
            s/.*<\/footer>/<\/footer>/p  # When </footer> is found, remove the content but keep the tag
        }' "$input_file" > "$DIR/cleaned_${base_name}"

    # Check if the cleaned file was created
    if [ -f "$DIR/cleaned_${base_name}" ]; then
        echo "Footer content removed. Output saved to cleaned_${base_name}"
    else
        echo "An error occurred while trying to create cleaned_${base_name}."
    fi
done
