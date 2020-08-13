# CePC+.cmd

Version 1.2 du 13/08/2020 (Voir l'historique des modifications à la fin de ce fichier).


## DESCRIPTION :

CePC+.cmd est un utilitaire qui permet de renommer l'icône "Ce PC" (ou "Ordinateur" pour Windows 7)
en "Ce PC (NomDuPC)", même si le nom de l'ordinateur est modifié, le nom sera actualisé automatiquement.
Ce batch nécessite l'utilisation du programme SetACL.exe (https://helgeklein.com/download/) qui doit être
placé dans le sous dossier \Res et en renommant les fichiers tel que : SetACLx64.exe et SetACLx86.exe.

             \Res
                  SetACLx64.exe
                  SetACLx64.exe
             \CePC+.cmd
	         \LisezMoi.txt
	         \README.md


## UTILISATION de CePC+.cmd :

Lancez simplement CePC+.cmd et choisisez l'action à réaliser.


## LICENCE :

Ce batch est diffusé sous licence GPL. Cela signifie que vous pouvez l’utiliser, le modifier ou
le redistribuer comme bon vous semble, du moment que le copyright et la mention d’auteur restent tels quels.
Lisez attentivement la licence GPL pour plus de détails (https://fr.wikipedia.org/wiki/Licence_publique_générale_GNU).


## HISTORIQUE :

15/03/2020 - Version 1.0
	- Première version.

25/05/2020 - Verion 1.1
	- Ajout de la modification de la clé de registre dans HKEY_CURRENT_USER

13/08/2020 - Verion 1.2
	- Ajout de l'affichage de la version.
	- Ajout du fichier README.md (pour Github) qui remplace le fichier LisezMoi.txt.
	- Correction typographique et ré-agencement du texte de ce fichier (pour Github).
	- Corrections sur le choix des options (manquait le choix 3).
	- Regroupement du code de fin pour les deux fonctions.
