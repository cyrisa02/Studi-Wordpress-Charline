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
https://wpchannel.com/wordpress/tutoriels-wordpress/modifier-prefixe-base-donnees-wordpress-installation/

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


11/ Gestion des articles et des médias  +  pages = Post-type (entité wordpress)
WP crée un id pour chaque post-type dans la BD 
si on en crée d'autre on les appelle les C ustom Post-type (=composant standard qu'on retrouve d'une manière ou d'une autre sur plusieurs pages , comme les courses passées ou future du pilote de formule 1)
On utilise le fichier functions.php 
add_action est un hook (moment, fonction exécutée)--- init= temps 0

une fois que c'est fait dans l'admin, j'ai crée dans le menu de gauche un nouveau composant que je peux appeler

12/ live 4 Taxonomie = catégoriser, organiser  les articles , mettre des tags dans les articles 
on a en cliquant sur l'engranage un menu avec Catégories à droite 
on peut hiérarchiser les Catégories parents/enfants (important pour le SEO)
on peut modifier les paramètres des catégories dans Articles/Catégories 

13/ Taxonomie et Custom Post Type 
-> register_taxonomy 
pour le nom mettre un repère tax_nomdelacatégoriecréée 
une fois la fonction js créée dans functions.php
je peux aller dans l'admin , courses et paramétrer les catégories Championnats puis Année 2021 , Année 2022 etc...
  














19/ mettre les fichiers en cache

20/ replace and search pour modifier l'URL du site et modifier toutes les BD en conséquence (vidéo n3 de Charline) liverun





