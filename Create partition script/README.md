# Script Diskpart

Ce script utilise l'outil en ligne de commande Diskpart pour partitionner et formater un disque.

## Utilisation

Pour utiliser ce script, ouvrez une invite de commande et exécutez l'outil en tapant `diskpart /s createpartition.txt`.

## Détails du script

Le script partitionne le disque et formate chaque partition avec un système de fichiers et une étiquette spécifiés. Les partitions sont assignées des lettres de lecteur pour un accès facile.

- Le volume 0 est sélectionné et assigné la lettre "R".
- Le disque 1 est sélectionné et nettoyé.
- Une partition primaire est créée avec une taille de 10240 Mo et formatée avec NTFS. L'étiquette est définie sur "DATAS" et la lettre de lecteur est assignée "D".
- Une autre partition primaire est créée avec une taille de 10240 Mo et formatée avec NTFS. L'étiquette est définie sur "DATABASE" et la lettre de lecteur est assignée "E".
- Une troisième partition primaire est créée avec une taille de 10240 Mo et formatée avec FAT32. L'étiquette est définie sur "LOGS" et la lettre de lecteur est assignée "F".
- Une quatrième partition primaire est créée avec une taille de 10240 Mo et formatée avec NTFS. L'étiquette est définie sur "ARCHIVES" et la lettre de lecteur est assignée "G".
