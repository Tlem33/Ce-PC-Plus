# CePC+.cmd

Version 1.3 du 13/12/2020 - Par Tlem33  
https://github.com/Tlem33/CePC-Plus  

---

## DESCRIPTION :

CePC+.cmd est un utilitaire qui permet de renommer l'icône "Ce PC" (ou "Ordinateur" pour Windows 7)  
en "Ce PC (NomDuPC)", même si le nom de l'ordinateur est modifié, le nom sera actualisé automatiquement.  
Ce batch nécessite l'utilisation du programme [SetACL.exe](https://helgeklein.com/download/) qui doit être  
placé dans le sous dossier \bin et en renommant les fichiers tel que : SetACLx64.exe pour la version 64 bits  
et SetACLx86.exe pour la version 32 bits.  

             \bin
                  SetACLx64.exe
                  SetACLx64.exe
             \CePC+.cmd
	         \LisezMoi.md
	         \README.md

---

## UTILISATION de CePC+.cmd :

Lancez simplement CePC+.cmd et choisissez l'action à réaliser :  

        1. Renommer "Ce PC" en "Ce PC (NomDuPC)"
        2. Remettre la valeur d'origine
        3. Quitter

**ATTENTION** : Ce batch nécessite une élévation de droits pour accèder à la base de registre.  
Si vous n'avez pas les droits administrateur, il ne fonctionnera pas.
        
--- 

## SYSTEME(S) :

     Windows 7  
     Windows 10  

---

## LICENCE :

Licence [MIT](https://fr.wikipedia.org/wiki/Licence_MIT)  

Droit d'auteur (c) 2021 Tlem33  

Une autorisation est accordée, gratuitement, à toute personne obtenant une copie de ce logiciel  
et des fichiers de documentation associés (le «logiciel»), afin de traiter le logiciel sans restriction,  
y compris et sans s’y limiter, les droits d’utilisation, de copie, de modification, de fusion, publiez,  
distribuez, sous-licence et/ou vendez des copies du logiciel, et pour permettre aux personnes  
auxquelles le logiciel est fourni, selon les conditions suivantes:  

La notification du droit d’auteur ci-dessus et cette notification de permission doivent être incluses  
dans toutes les copies ou portions substantielles du Logiciel.  

LE LOGICIEL EST FOURNI « EN L’ÉTAT » SANS GARANTIE OU CONDITION D’AUCUNE SORTE, EXPLICITE OU IMPLICITE  
NOTAMMENT, MAIS SANS S’Y LIMITER LES GARANTIES OU CONDITIONS RELATIVES À SA QUALITÉ MARCHANDE,  
SON ADÉQUATION À UN BUT PARTICULIER OU AU RESPECT DES DROITS DE PARTIES TIERCES. EN AUCUN CAS LES  
AUTEURS OU LES TITULAIRES DES DROITS DE COPYRIGHT NE SAURAIENT ÊTRE TENUS RESPONSABLES POUR TOUT  
DÉFAUT, DEMANDE OU DOMMAGE, Y COMPRIS DANS LE CADRE D’UN CONTRAT OU NON, OU EN LIEN DIRECT OU  
INDIRECT AVEC L’UTILISATION DE CE LOGICIEL.

---

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
	    - Ajout d'un double espace a la fin de chaque ligne de ce paragraphe pour le retour de ligne en Markdown (pour Github).  

13/12/2020 - Verion 1.3

	    - Mise à jour du fichier README.md (Licence et divers éléments).
		- Ajout du lien vers le dépot Github dans README.md et dans le batch.
		- Fichier LisezMoi.txt renommé en LisezMoi.md.  
		- Mise à jour du nom du dépot => Ce-PC-Plus => CePC-Plus.
	    - Modification du chemin vers les binaires (\bin au lieu de \Res). 

---
