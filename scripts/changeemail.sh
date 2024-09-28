#!/bin/bash

# Set the directory where your HTML files are located
DIRECTORY="/home/paulgrey/Templates/electricitedj"

# Find and replace in all .html files
find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/enquiries@gmcontractors.co.uk/info@electricitedj.com/g' {} +

echo "Replacement complete!"
