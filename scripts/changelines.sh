
#!/bin/bash

# Set the directory where your HTML files are located
DIRECTORY="/home/paulgrey/Templates/electricitedj"

# Find and replace in  .html files
find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Home/Acceuil/g' {} +


echo "Home Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Projects/Projets/g' {} +


echo " Projects Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/About/A propos/g' {} +


echo "About Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Contact/Nous Rejoindre/g' {} +


echo "Contact Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Terms/Politiques/g' {} +


echo "Terms Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Privacy/Confidentialité/g' {} +


echo "Privacy Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Electricite DJ. Inc./Électricité DJ Inc./g' {} +


echo "Electricite DJ. Inc. Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Selected Projects/Projets Vedette/g' {} +


echo "Selected Projects Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/View /Tout Voir/g' {} +


echo "View  Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Electrique/Électrique/g' {} +


echo "Electrique  Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Ready to discuss your next project?/Prêt à discuter de votre prochain projet?/g' {} +


echo "Ready to discuss your next project?  Replacement complete!"

find "$DIRECTORY" -type f -name "*.html" -exec sed -i 's/Get in touch/Contactez Nous/g' {} +


echo "All Replacements complete!"


