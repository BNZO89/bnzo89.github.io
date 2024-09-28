#!/bin/bash

# Set the directory where your HTML files are located
DIRECTORY="/home/paulgrey/Templates/electricitedj"

# Find and replace in all .html files
find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/01339884433/14182540493/g' {} +

echo "Replacement complete!"
