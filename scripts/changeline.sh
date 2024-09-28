#!/bin/bash

# Set the directory where your HTML files are located
DIRECTORY="/home/paulgrey/Templates/bnzo89.github.io/bnzo89.github.io"

# Find and replace in all .html files
find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/class="menu-cta">Commencer un Projet<\/a>/href="index.html%3Fp=15.html" class="menu-cta">Commencer un Projet<\/a>/g' {} +

# Print a message after completion
echo "All Replacements complete!"
