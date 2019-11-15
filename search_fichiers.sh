#!/bin/bash
Now=$(date +"%d %B %Y")
echo "Bonjour $USERNAME,  nous sommes le $Now"
read -p 'Quel répertoire vous intéresse aujourdhui ?' Rep
echo "Vous avez saisi :  $Rep"
echo "La liste des fichiers avec le pattern $1 dans votre chemin contenant $2 est :"
find ${Rep} -name $1 -exec grep -il $2 {} \;
