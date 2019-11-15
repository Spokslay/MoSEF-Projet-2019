# Projet Linux **[MoSEF]**
## Réalisé par : *Elmehdi OUIZZA*

Ce Git apporte des éléments de réponse au projet Linux de la formation MoSEF.
Lien pour la page associée au Git [Lien](https://spokslay.github.io/MoSEF-Projet-2019/)

Le script search_fichiers.sh comporte deux arguments, un qui définit le chemin du répertoire recherché et l'autre pour la chaine de caractère à retrouver.

Le fonctionnement du script se décompose comme suit: 

1. Souhaite la bienvenue à l'utilisateur en indiquant l'heure : 
```
Now=$(date +"%d %B %Y")
echo "Bonjour $USERNAME,  nous sommes le $Now"
```

2. Demande le chemin à l'utilisateur et l'affiche :
```
read -p 'Quel répertoire vous intéresse aujourdhui ?' Rep
echo "$Rep"
echo "Vous avez saisi :  $Rep"
```

3. Retrouve les fichiers qui suivent le pattern saisi par l'utilisateur dans le répertoire demandés:
```
echo "La liste des fichiers avec le pattern $1 dans votre chemin contenant $2 est :"
find ${Rep} -name $1 -exec grep -il $2 {} \
```


Exemple d'execution du Script:
[Exemple](https://github.com/Spokslay/MoSEF-Projet-2019/blob/master/Photos/Test_Script.png)

