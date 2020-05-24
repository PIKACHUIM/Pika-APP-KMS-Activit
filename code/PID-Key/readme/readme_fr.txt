
                            PIDKey Portable par Ratiborus,
                                       MSFree Inc.

       		                        Description:
                          —————————————————————————————————
Ce programme a été développé pour visualiser, mettre à jour et stocker des informations 
sur les clés produit de Microsoft dans un fichier journal. Dans plusieurs cas, il vous 
permet de remplacer VAMT.

       		                       Utilisation du programme :
                          —————————————————————————————————
Exécuter PIDKey.exe, sélectionner la configuration désirée, insérer la clé dans le champ 
de saisie et cliquer sur GO! Vous pouvez insérer une ou plusieurs clés en les copiant du 
presse-papier et en cliquant avec la souris dans le champ de saisie des clés. 
L'identification de la configuration de la clé sera vérifiée, en commencant par le début 
de la liste jusqu'à ce que les données correctes soient retrouvées.
Le programme dispose de plusieurs configurations intégrées, mais vous pouvez aussi 
paramétrer votre configuration de  manière personnalisée. Si vous mettez votre fichier 
de configuration dans le dossier du programme, il sera sauvegardé dans l'arborescence du 
chemin relatif et le programme pourra fonctionner avec à partir de n'importe quelle 
localisation.
Lorsque vous sélectionnez un configuration personnalisée, un bouton devient disponible 
pour pouvoir l'enlever. 
Vous pouvez vérifier la clé à partir d'un fichier. Vous pouvez utiliser n'importe quel 
fichier en format texte contenant une clé mélangée avec plusieurs autres clés, elles 
seront extraites correctement.
Le fichier Activation_Restore.cmd est créé dans le dossier avec l'activation qui y est 
stockée. Avec ce batch, vous pouvez toujours restaurer l'activation sans même disposer 
du programme PIDKey.

                          —————————————————————————————————
                                                                Ratiborus


Journal des modifications :
v2.1.2 build 1015 
 -Fixed minor bugs.

v2.1.2 build 1014 
 -Small interface changes.

v2.1.2 build 1013 
 -Optimized some functions to accelerate the program.
 -Small interface changes.

v2.1.2 build 1010
 -Small changes to the interface.

v2.1.1 build 1006
-Key Groups beginning with "Server Cloud12" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2012" 
-Key Groups beginning with "Server Cloud2016" need to recheck, from the table. They will
 be transferred to the group "Server Cloud 2016"
-Key Groups "Not Found" need to recheck.

v2.1.1 build 1005
 -Small changes to the interface.
 -Changes in function prediction configuration.
 -Fixed minor bugs.

v2.1.1 build 1000
 -The program window has become smaller, 780x550. Changed font and button layout.
 -Key Groups beginning with "Server 12" need to recheck, from the table. They will
  be transferred to the group "Server 2012"
 -When checking the keys works prediction function, increasing the speed of work.
 -The program works on Windows XP, only the x86 version.
 -Added configuration to determine Windows 10 b14352 keys, definition  works only
  on Windows 7-10, on XP not working. New DLL pidgenx.dll does not support Windows XP.

v2.1.0 build 1001
 -Small changes to the interface.

v2.1.0 build 1000
-Small changes to the interface, added compatibility with Windоws 10 build 14352.

v2.0.9 build 1008
 -Optimized some functions to speed up the program.

v2.0.9 build 1006
 -Changes in the "Service Keys Database" function.

v2.0.9 build 1005
 -Optimized some functions to speed up the program.

v2.0.9 build 1004
 -When the key is being identified the program displays a parameter called "Total keys"
  "Total keys" - is the number of keys related to a sub-type (e.g. X18-32647, X20-32655, 
  [TH] X20-17626...) which can be released just by M$.

v2.0.9 build 1003
 -On Windows 10 OSPP is not properly determined, Office 15 keys are
  not set.

v2.0.9 build 1002
 -Optimized some functions to speed up the program.
 -The whole configuration is stored in INI file.
 -Now you can create any number of configurations (number of files pconfig.xrm-ms) in this 
  version, the list will grow dynamically as you add new configurations. You can make a list
  of any size.
 -When the program is run, the keys database is unpacked in folder C:\Windows\Temp
 -You can run multiple instances/copies of the program, but be careful if you are running a copy
  from the same folder, the latest running instance/copy of the program overwrites keys when 
  closing it!!!

PS: In the 1001 test assembly key database is stored in the program folder, and if the length 
  of the path to the database exceeded 259 characters, then the entire database is not displayed,
  the keys are lost. In build 1002 the keys database is unpacked again, in C:\Windows\Temp.


v2.0.9 build 1000 
 -Optimized some functions to accelerate the program. 
 -Small interface changes.

v2.0.8 build 1002
 -Ajout de la suppression de toutes les clés verrouillées + clic sur le bouton "ALT". 

v2.0.8 build 1001
 -Sur Windows 10 Technical Preview OSPP n'est pas correctment déterminé, les clés Office 14
 ne sont pas paramétrées.

v2.0.8 build 1000
 -Le programme est maintenant en plusieurs langues, ajout de la possibilité de modifier la 
  langue de l'interface.
 -Ajout de l'affichage de Product.LicenseStatusReason sur l'état de licence des produits, 
  si le paramètre n'est pas égal à zéro (error 0x4004F040).
  
v2.0.7 build 2120
 -Optimisation de la fonction de saisie des clés à partir du presse-papier.
 -Affichage complet de l'information du service KMS lorsqu'une clé CSVLK est installée
  sur l'hôte ou l'hôte KMS pour Office 14/15.
  
v2.0.7 build 2119
 -Correction d'un bogue sur Windows 7, qui n'affiche pas l'état de la licence.
 
v2.0.7 build 2117
 -Correction d'un problème engendré lorsqu'après modification du type de canal de clé 
  produit, le produit ne pouvait pas être activé.
 -Correction d'un bogue lors de la sauvegarde de la base de données des clés.
 -Accroissement de la vitesse d'exécution du programme.
 
v2.0.7 build 2116
 -Correction de bogues mineurs.

v2.0.7 build 2114
 -Réécriture complète des fonctions de paramétrage des clés et du procédé d'activation. 
 -Amélioration du traitement des clés. 
 -Ajout d'une interface pour paramétrer la clé et l'activer. 
 -Ajout de la sauvegarde et de la restauration de l'activation. 
  Attention, la restauration de l'activation ne fonctionne pas toujours. 
 -Ajout du bouton "Activer par téléphone". 
 -Ajout du bouton "Information de licence".

v2.0.7 build 2000 Finale (J'ai fais tout ce que je voulais à partir de ce qui était 
  planifié. ;) )
 -Correction de bogues mineurs.
 -Lors de l'ajout d'une clé, un message est affiché si celle-ci est bloquée.
 -Affichage du nombre de clés dans les groupes ListView.
 -Ajout dans le menu contextuel "Déplacer la clé sélectionnée vers celles bloquées".
 -La restauration de la fonction de la base de données des clés fonctionne à partir de 
  n'importe quel dossier.
 -Ajout de la possibilité de supprimer la clé sélectionnée.
 
v2.0.6.1
 -Correction d'un bogue empêchant la copie des clés sélectionnées vers un fichier texte.
 
v2.0.6
 -Ajout de la possibilité de cacher les clés par type de canal de licence (CSVLK, GVLK, 
  OEM, MAK, RETAIL).
 -Ajout de la possibilité de sauvegarder les clés bloquées dans un fichier texte.
 -Ajout du paramètre "SaveBasePermanently=False/True" dans В Settings.ini.
  Faux - la keybase est stockée uniquement lorsque le programme se ferme;
  Vrai - la keybase persiste après l'ajout de chaque clé.
  
v2.0.5
 -Lorsque l'on détermine le compte des activations, s'il n'y a pas de connexion internet 
  une erreur s'affiche. Solutionné.
 -Ajout de la possibilité de sauvegarder et de restaurer les clés.
 -Correction de bogues mineurs.
 
v2.0.4
 -Correction de bogue mineurs. 
 -Ajout des boutons pour annuler une action et relancer une action. 
 -Ajout de la possibilité de protéger la base de données des clés par un mot de passe. 
 -Ajout d'une info bulle lorsque vous passez la souris sur une clé. 
 -La base des clés stockée dans un fichier protégé par mot de passe. Le dossier KEYS 
  n'est plus nécessaire. 
 -Lors du traitement des fichiers avec les clés *.key et *.cilx sont ajoutés aux 
  commentaires de la base de données aux clés des fichiers. 
 -Correction des bogues avec le classement via la liste des champs.

v2.0.3
 -Modification dans la fonction de recherche de clé.
 -Lors du traitement des fichiers .cilx des commentaires sont copiés vers la clé.
 -Le classement/tri des clés fonctionne.
 -Suppression de nombreuses erreurs. Mais certainement pas toutes. :)

v2.0.2
 -Modifications dans l'interface. Les fenêtres PID Checker combinées avec les clés de base.

v2.0.1
 -Modifications dans l'interface.
 
v1.0.5.1
 -IAccroissement de la vitesse du programme.
 -Modifications dans l'interface.
 
v1.0.4
 -Ajout de la possibilité de voir et d'éditer les fichiers avec les clés.
 
v1.0.3
 -Ajout d'un champ pour ajouter une clé, vous pouvez insérer quelques clés. Avec du texte 
  supplémentaire.
 -Ajout du classement/tri des fichiers de clés.
 -Ajout de commentaires pour les clés.
 -Recherche de clé, partie de la clé et commentaire.
 
v1.0.1
 -Modifications dans l'interface.
 -Ajout de clés bloquées dans la base de données.


v1.0.0
 -Première version du programme.
