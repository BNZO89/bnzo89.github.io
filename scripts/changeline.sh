#!/bin/bash

# Set the directory where your HTML files are located
DIRECTORY="/home/paulgrey/Templates/electricitedj"

# Find and replace in all .html files
find "$DIRECTORY" -type f -name "*.html" -exec sed -i "s/parlerabout your next construction project/pour nous parler de votre prochain projet de construction/g" {} +

# Print a message after completion
echo "All Replacements complete!"
