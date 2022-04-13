https://github.com/charline-studi/wordpress
code : laporte 
nom du site: studi-laporte 

wappalyser: pour voir la techno d'un site 

mettre les fichier sur var/www/html 
32'16

dans local: aller dans DATABASE / OPEN ADMINER 

Préfixe des tables: c'est bien de mettre le nom du client plutôt que wp_ 
du coup pour nous le préfixe est: studi_

En local, ne pas indexer ce site, le faire qd on est en prod!

regarder le fichier wp-config.php pour modifier les paramètres

changer define('WP_DEBUG', false); IMPORTANT
define('WP_DEBUG', true); pour le développement
NE PAS OUBLIER DE REMETTRE à false en Production

POur créer un nouveau thème:
1/effacer les thèmes standard dans wp-content/themes
2/ créer un nouveau répertoire avec le nom du thème ici-> studi 
3/ créer trois fichiers index.php, style.css, functions.php
4/ nous on a mis une image screenshot.png 
5/ Créer la page d'accueil 
Apprence/personnaliser/reglage de la page d'accueil  -> page statique -> selectionner 
6/ on peut modifier le fichier index.php avec  <?php the_title() ?>
7/ on veut créer des pages différentes donc on fait appel au template
tpl-home.php , mettre les noms en anglais 
8/ une fois le fichier template créé, on peut dans l'administrateur aller sur la page et sur Modèle/Modèle par défaut choisir Modèle page d'accueil (ne pas oublier)
9/ installer l'extensio ACF (Advanced Custom Fields) +activer 
10/ Créer un groupe de champ -> ajouter ça permet de bine cadrer par feuille les champs que le client devra saisir 


11/ Gestion des articles et des médias= Post-type 






19/ mettre les fichiers en cache

20/ replace and search pour modifier l'URL du site et modifier toutes les BD en conséquence (vidéo n3 de Charline) 

10'50



