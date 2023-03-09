# Script Batch pour Ajouter un Utilisateur à un Système Windows

Ces scripts sont des scripts Batch pour Windows qui permetent d'ajouter un utilisateur au système et éventuellement de l'ajouter au groupe des administrateurs. Ils peuvent être utilisé pour automatiser le processus de création de nouveaux comptes utilisateurs sur des systèmes Windows.
## Utilisation

Les scripts on tous la meme function mais ils sont utilisés de façon differantes. Pour afficher comment utiliser un script, vous pouvez executer le script en question et rajouter l'argument `/h`. Il est necessaire de les executer tant qu'administrateur.

### Script 1 (`createuser1.cmd`):

Pour utiliser ce script il faut simplement l'executer dans un terminal, le script vous demandera d'entrer le nom de l'utilisateur qu'on souhaite créer, le mot-de-passe et en suite si vous voulez l'ajouter ou pas tant qu'administrateur.

### Script 2 (`createuser2.cmd`):

Pour utiliser ce script il faut ajouter le nom d'utilisateur, le mot-de-passe et si on le souhaite ajouter tant qu'administrateur, voici un exemple:

`createuser2.cmd nom_utilisateur mot_de_passe [/admin]`
Où :
- `nom_utilisateur` : Le nom d'utilisateur souhaité pour le nouvel utilisateur.
- `mot_de_passe` : Le mot de passe souhaité pour le nouvel utilisateur.
- `/admin` : Un indicateur facultatif qui indique si le nouvel utilisateur doit être ajouté au groupe des administrateurs.

### Script 3 (`createuser3.cmd`)

Ce script est un mélange des deux autres scripts, soit on ne fourni pas d'arguments et le script va nous demander les informations (comme au script `createuser1.cmd`) ou soit on fourni les arguments au moment de l'execution (comme au script `createuser2.cmd`)

