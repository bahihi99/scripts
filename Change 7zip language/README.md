# Configuration de la langue de 7-Zip

Ce code est un script batch pour configurer la langue de l'outil de compression de fichiers 7-Zip. Le script demande à l'utilisateur de choisir une langue parmi une liste prédéfinie, puis modifie la clé de registre correspondante pour définir la langue sélectionnée.

## Utilisation

Pour utiliser ce script, ouvrez une invite de commande et exécutez le fichier `changelanguage.bat`. Si aucun argument n'est fourni, le script demandera à l'utilisateur de saisir une langue parmi celles disponibles. Si un argument est fourni, il sera utilisé comme langue par défaut.

Les langues disponibles sont : anglais (`en`), français (`fr`), italien (`it`), portugais (`pt`), allemand (`de`) et néerlandais (`nl`).

Si une langue valide est sélectionnée, le script modifiera la clé de registre appropriée et affichera un message de confirmation. Si la langue sélectionnée n'est pas valide, le script affichera un message d'erreur et la liste des langues disponibles.

Pour afficher la liste des langues disponibles à tout moment, vous pouvez exécuter le script avec l'argument `/h`.
