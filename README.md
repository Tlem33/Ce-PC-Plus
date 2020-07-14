CePC+.cmd
*********
Version 1.1 du 25/05/2020 (Voir l'historique à la fin du fichier).


DESCRIPTION :
=============
CePC+.cmd est un utilitaire qui permet de renomme l'icône "Ce PC" (ou "Ordinateur" pour Windows 7)
en "Ce PC (NomDuPC)", même si l'ordinateur est renommé le nom est actualisé automatiquement.
Ce batch nécessite l'utilisation de SetACL.exe (https://helgeklein.com/download/) à placer dans le
sous dossier \Res et en renommant les fichiers tel que : SetACLx64.exe et SetACLx86.exe.
             
             \Res
                  SetACLx64.exe
                  SetACLx64.exe
	\LisezMoi.txt
             \CePC+.cmd


UTILISATION de CePC+.cmd :
==================
Lancez simplement CePC+.cmd et choisisez l'action à réaliser.



LICENCE :
=========
Ce batch est diffusé sous licence GPL. Cela signifie que vous pouvez l’utiliser, le modifier ou
le redistribuer comme bon vous semble, du moment que le copyright et la mention d’auteur restent tels quels.
Lisez attentivement la licence GPL pour plus de détails (https://fr.wikipedia.org/wiki/Licence_publique_générale_GNU).



HISTORIQUE :
============
15/03/2020 - Version 1.0
	- Première version.

25/052020 - Verion 1.1
	- Ajout de la modification de la clé de registre dans HKEY_CURRENT_USER
