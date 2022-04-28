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

Mais si tu lveux avoir la même configuration que moi, voici mes réponses :
• pour le nom de la base de données : il faut la changer d'abord dans phpMyAdmin, puis indiquer son nouveau nom dans le fichier wp-config.
• pour le préfixe des tables, c'est plus complexe cela demande plusieurs manipulations, voici un article qui les liste : https://wpchannel.com/wordpress/tutoriels-wordpress/modifier-prefixe-base-donnees-wordpress-installation/

En fait ce fichier wp-config est juste un fichier qui fait le lien entre "ta machine" et "la machine worpdress", ce que tu écris à l'intérieur ne pourra pas modifier ta base de données ou tes tables c'est à toi de la faire directement depuis ton gestionnaire de base de données.

POur créer un nouveau thème:
1/effacer les thèmes standard dans wp-content/themes
2/ créer un nouveau répertoire avec le nom du thème ici-> studi 
3/ créer trois fichiers index.php, style.css, functions.php
4/ nous on a mis une image screenshot.png 
5/ Créer la page d'accueil 
Apprence/personnaliser/reglage de la page d'accueil  -> page statique -> selectionner 
6/ on peut modifier le fichier index.php avec  <?php the_title() ?>, c'est le modèle par défaut ou alors on crée des tpl-qqchose.php 
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

13/ Taxonomie et Custom Post Type (notion de chronologie derrière)
-> register_taxonomy 
pour le nom mettre un repère tax_nomdelacatégoriecréée 
une fois la fonction js créée dans functions.php
je peux aller dans l'admin , courses et paramétrer les catégories Championnats puis Année 2021 , Année 2022 etc...

14/ Header et footer live 5
créer un fichier avec le nom exact du slug du post type concerné chez nous,
single-project.php 
des fois y a des bugs avec les permaliens faire une modif sur les permaliens et enregistrer ça remetà jour 

single-post -> c''est pour les articles parce que post =articles par défaut!!!

hiérarchie de WP 

https://developer.wordpress.org/files/2014/10/Screenshot-2019-01-23-00.20.04.png

avec ACF je peux créer un groupe de champs -Projet
puis intitulé Image / Nom image
Emplacement Type de publication est égal Projets Portfolio  puis publier!!!! 

créer un groupe champs avec ACF "Taxo client" -> avec deux champs: logo + site internet et dans 
Projets postfolio / clients j'ai les champs site + internet 

on peut créer un header.php et footer.php +
modifier le tplp-home.php avec <?php get_header() ?> et <?php get_footer() ?>  
puis faire la même chose pour toute les pages (contact, index etc...) et sur les custom post type <=> single-qqchose.php 

Pour le CSS 
dans le fichier header.php 
saisir <?php wp_head(); ?>

dans le fichier function.php 
https://developer.wordpress.org/reference/functions/wp_enqueue_style/

Live6 
ACF // Groupe champ -Menu // Couleur de mon header 
on peut ordonner, prioritiser les champs ACF 
on peut modifier le "Nom du champ", mettre un nom court car c'est un slug qu'on va utiliser plus tard dans le code 
type field Types: regarder la doc car c'est très riche 
https://www.advancedcustomfields.com/resources/#field-types/
requis= obligatoire 
rouge: Rouge 
clé: Valeur comme json 
code: client 

Format dans le modèle: 

ACF // Groupe champ -Projet 
créer des grupes de champs (images / introduction)
aller dans single-project.php 
dans le admin de l'image mettre le "format dans le modèle" à "URL de l'image"

Live7
dasn single-project.php 
à chaque fois que je crée un champ dans le backoffice il faut appeler dans single-project 
faire des var_dump avec get_field 
ici je veux pouvoir proposer au client d'afficher ou non un bouton de retour accueil 

Création de champs pour la page accueil
ne pas oublier emplacement / Modèle de page égal Modèle Page accueil 
+ cliquer sur Editeur de contenu (ça efface le guntenberg qui ne sert à rien)
ne pas oublier de modifier le tpl-home.php avec 
faire des vardump des focntions
pour les texte area penser au foramtages (Nouvelles lignes) des paragraphes dans ACF attention au div ou p (par exemple conflit avec br dans nvlles lignes)

Live 8
Les links, les posts, Select 
pour les liens: voir valeur affichées dans le template -> tableau (mieux pour rendre dynamique le code) ou URL voir tpl-home.php 

on peut regrouper sous un onglet plusieurs champs:
créer un champ "Couverture" type "onglet" puis "A propos" on enregistre et on déplace dans ACF 

pour les posts: projets comme onglet 
Type de champ : relation + firltrer par type de publication : projets portfolio 
sur tpl-home.php 
Format dans le modèle: Objet Publication comme un tableau avec var_dump sion ID de la publication que je peux récupérer grâce au var_dump 

Live 9 Filtrer et afficher des custom post-type 
créer un fichier tpl-projects
dans le backoffice mettre modèle de page projets
aller sur ACF 
Groupe de champs - Pages Projets
Modèle de pages égale modèle de page projets

on utilise la fonction get_posts comme c'est un tableau utiliser voir les var_dump 
project vient de functions.php et on le reprend dans tpl-projects
on classe par date et par desc (du plus récent au plus vieux)
on peut trier par title -> post_title (vient du array)
get_posts ne renvoie pas les brouillons  
meta_key + value c''est par rapport à ACF et state / Etat 

Live 10
page d'option -> pour afficher partout les reseaux sociaux
acf_add_options_page version pro


créer une pages info générales dans le backoffice 
créer le fichier tpl-empty 
modifier le ficheir footer dans lequel il y a les reseaux sociaux 

extension à installer
wp rocket pour vider le cache
custom order post 
safe svg 






































19/ mettre les fichiers en cache

20/ replace and search pour modifier l'URL du site et modifier toutes les BD en conséquence (vidéo n3 de Charline) liverun





