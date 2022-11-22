---
title: "Data dictionary"
author: "Barde Julien, Andriamasinoro Herinomena"
date: "2022-11-22"
output: 
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_schemas: "https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=864330671"
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=1542923561"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=1136675083"
  GPS_schema_db: "https://drive.google.com/uc?id=1cZCu8LoNBxEpb7edFA-XT_HdCGcW-mhu"
  GPS_recalibration_schema_db: "https://drive.google.com/uc?id=1qtM0nqv9Xhsu6KreflrZLSjpXQEJp3Ie"
  schema_suivi_debarquement: "https://drive.google.com/uc?id=1yQwK2fVztf8h5FOeUdIinuxKcjx0NRiF"
  schema_suivi_new: "https://drive.google.com/uc?id=1oTnVjXftx9n-wgzTDCZxT3D4WjNOl4dC"
  schema_suivi_photos_barcoding: "https://drive.google.com/uc?id=1P5NnZ7g_2KS1A_kBhIl852u4sZFad1Vl"
---










# Introduction

This report describes the data dictionary of the "fish" database. The content is taken from the following google spreadsheets :  

* [List of colums for all schemas](https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=864330671)
* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=1542923561)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit#gid=1136675083)

The content of the data dictionnary can be improved by editing the google spreadsheets.

![Database schema of raw GPS data](https://drive.google.com/uc?id=1cZCu8LoNBxEpb7edFA-XT_HdCGcW-mhu){width=40%} ![Database schema of post-processed GPS data](https://drive.google.com/uc?id=1qtM0nqv9Xhsu6KreflrZLSjpXQEJp3Ie){width=40%}



# The schemas

Here is the list and definition of schemas in the database

<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<caption>Description of schemas</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> schema </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> Le schéma "public" regroupe les données de GPS qui sont stockées dans plusieurs tables reliées par des clés (explicites) ou des positions dans le temps ou dans l’espace (implicites). Des équipements GPS ont été mis en place sur un échantillon d'une centaine de pirogues et donnent la position de ces bateaux à une fréquence de temps hétérogène (entre 30 secondes et 1,5 minutes).
Les positions GPS stockées sont ensuite transformées en trajectoires. Les trajectoires sont ensuite traitées par des modèles pour prédire la positions des opérations de pêche. Les modèles de prédiction nécesite un jeu de données d’apprentissage composé de données brutes et de données observées. Un modèle par type d’engin sera créé et ce modèle servira ensuite à prédire les actions de pêche (sans observations). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> Le schema "recalibration" regroupe les mêmes tables que le schema "public"  mais les données GPS brutes ont été transformées (recalibrées) pour ré-exprimer toutes les positions avec la même fréquence de temps (paramètre fixé à une minute actuellement). Cet alignement sur la même fréquence a été réalisé avec des packages R. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> Le schema "suivi" regroupe des tables complémentaires à celles qui stockent les données des GPS (dans les schemas "public" et "recalibration"). Ces tables stockent les données halieutiques relatives au suivi des captures effectuées par les pirogues équipées de GPS : données sur les pêcheurs, les captures (par un système de suivi participatif) et des échantillons de captures au débarquement.

Ces données sont d'abord collectées sur le terrain avec des fiches papier qui sont ensuite saisies dans une base Access pour la baie de Tuléar (ou dans des fichiers Excel pour la baie de Ranobe). Les tables Access ou Excel (station, poids, espèce..) sont ensuite transférées à l’identique dans le schéma "suivi" de la base Postgres avec des scripts R. Modèle de la base Access créé par Faustinato. Fichiers Excel de Sandra.

Le suivi participatif permet de récuperer les productions déclarées par grand groupes d’espèces sur 12 mois (à partir des captures journalières des pêcheurs équipés de GPS)  et le le suivi des débarquements permet de mesurer la biodiversité des captures.

 - des données de captures par sortie (collectées à partir de fiches papiers par des observateurs embarqués), 
 - des données de compositions de captures (collectées à partir de fiches papiers au débarquement ??)
 - des photos des espèces qui seront ensuite traitées pour automatiser les mesures de tailles et les identifications. Les photos ne sont pas stockées dans la base de données qui stocke uniquement un identifiant pour les retrouver facilement sur un autre système de stockage (elles pourront être stockées ailleurs : NAS, serveur http..).

Le lien entre les tables de captures et la table de positions GPS prédites se fait par le couple date-code pêcheur. Pour certains couples des tables de captures, il y a un doublon correspondant à 2 sorties le même jour, qui sont reliées aux 2 trajets correspondants dans l’ordre chronologique. A noter que dans certains cas, il n’y a pas de trajet GPS associé au couple date-code pêcheur (le pêcheur a oublié le GPS chez lui…). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> Le schema "ref" regroupe les référentiels (non spatialisés) qui sont utilisés pour contrôler les valeurs des colonnes dans différentes tables de la base </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> Le schema "geo" regroupe les référentiels spatialisés ou référentiels spatiaux qui correspondent à des couches vecteurs (shapefiles...) qui ont été importées dans la base. Les shapefiles importés dans PostGIS ont été créés avec QGIS à partir d’images satellites (à la main ou traitements d'images ??). On y trouve des couches vecteurs sur les "Mangroves", "Terrasses peu profondes", "Lagons", "Récifs", zones du "Large" et zones à "Terre". </td>
  </tr>
  <tr>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> ??? Le schema "historique"??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> svg </td>
   <td style="text-align:left;"> ??? Le schema "ref" a até créé pour stocker des sauvegardes de tables ??? </td>
  </tr>
</tbody>
</table>


# The tables


<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<caption>Description of tables</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> schema </th>
   <th style="text-align:left;"> table </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> buffer_vill_ref </td>
   <td style="text-align:left;"> ???buffer de XXX m autour des points qui localisent les villages concernés par le suivi ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells </td>
   <td style="text-align:left;"> grille de carrés de  ??? de côtés. Utilisée pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells0_0025d </td>
   <td style="text-align:left;"> grille de carrés de 0,025° de côtés. Utilisée pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells0_005d </td>
   <td style="text-align:left;"> grille de carrés de 0,5° de côtés. Utilisée pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells0_01d </td>
   <td style="text-align:left;"> grille de carrés de 0,1° de côtés. Utilisée pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells0_02d </td>
   <td style="text-align:left;"> grille de carrés de 0,2° de côtés. Utilisée pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells3 </td>
   <td style="text-align:left;"> grilles de carrés de 3???? de côtés. Utilisé ^pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells4 </td>
   <td style="text-align:left;"> grilles de carrés de 4???? de côtés. Utilisé ^pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cells500 </td>
   <td style="text-align:left;"> grilles de carrés de 500m de côtés. Utilisé pour compter le nombre de positions par carrés. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cellstest </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> communes_uni </td>
   <td style="text-align:left;"> couches qui réunit des zones à terre ou en mer mais considérées comme trop proches de la terre pour permettre des opérations de pêche. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> cote </td>
   <td style="text-align:left;"> Couche géographique qui indique le trait de côte </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> emprise </td>
   <td style="text-align:left;"> définition de la zone d’étude. Tout ce qui est en dehors de cette zone est supprimé (position aberrantes) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_1_terre </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones à terre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_2_mangrove </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de mangroves </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_3_terrasse_peu_profonde </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de terrasses peu profondes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_4_lagon </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de lagons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_5_recif </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de récifs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_6_large </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones au large </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_estran </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones d'estran </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_lagon </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de lagons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_large </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones au large (définies comme la zone qui part de la pente externe des récifs vers la haute mer) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_mangrove </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de mangroves </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_recif </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones de récifs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> grt_terre </td>
   <td style="text-align:left;"> Couche géographique qui indique les zones à terre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> geo </td>
   <td style="text-align:left;"> zones </td>
   <td style="text-align:left;"> polygones de la géomorphologie récifale (zones peu profondes, lagons, au large..) qui pourraient être reprécisés. Permet de dire combien de positions en pêche par zones. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> suivi_2009 </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> La table "etat_predit" indique pour chaque point indique si l’état prédit est en pêche ou pas. Cette table n'est plus beaucoup utilisée en pratique car elle peut être remplacée par la table du même nom dans le schema recalibration. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> La table "prepa_predict_etat" contient un sous ensemble de la table "trajet_epure" ainsi que des covariables utilisées par les modèles pour la prediction de l'état pêche. Ces paramètres / co-variables sont nécessaires pour le modèle random forest. Cette table n'est pas beaucoup utilisée en pratique car elle peut êre remplacée par celle du schema "recalibration" dans lequel les pas de temps entre les positions GPS successives ont été harmonisés. Il existe un article qui compare juste la vitesse en random forest et qui semble montrer que les résultats obtenus sont à peu près similaires. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> La table "trajet" du schema "public" stocke les données brutes des GPS. Une ligne correspond à un point GPS d’une trajectoire avec  une timestamp et la latitude et la longitude qui servent à créer la géométrie.  Chaque point GPS est identifié par un identifiant numérique et son fichier GPS d'origine qui utilise une convention de nommage avec une clé composée (du type "nom_village_nom_engin_code_pecheur_date"). D’autres attributs complémentaires sont rajoutés pour compléter ceux du GPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> La table "trajet_epure" contient des données GPS qui ont été filtrées (nettoyées). En effet, 50% des données brutes de la table "trajet" sont sans intérêt (en particulier de nombreuses données à terre).  Les données considérées comme fausses (hors de la zone d'étude) ou inutiles (zones en mer mais autour des ports ou à terre, dans les communes ou dans un buffer de 500 m autour des villages) sont donc supprimées par des scripts SQL directement executés dabs Postgres / Postgis. 
Les données restantes (uniquement des données en mer dans la zone d'étude retenue) sont, stockées dans la table "trajet_epure" qui a donc une structure identique à la table "trajet" avec, en plus, un numéro de trajet / sortie de pêche (identifiants de marée). 
Les filtres temporels sont appliqués en premier puis, ensuite, les filtres spatiaux avec un masque issu du shapefile des communes (table  “commune_uni” ) qui a été retravaillé à la main avec une image satellite en fond  et qui nécessite peut-être encore d'être améliorée.
Questions sur les masques à utiliser ou à optimiser (éventuellement par engins). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> La table "etat_predit" donne pour toutes ou partie des données de la table "recalibration.prepa_predict_etat" des prédictions de pêche selon différentes sources : observations directement à bord, sur SIG (QGIS) ou prédictions des modèles basés sur la vitesse, random forest ou autres. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> La table "prepa_predict_etat" est exactement la même vue que "prepa_predict_etat" du schema "public" sauf qu’elle prend en entrée les données de "recalibration.trajet_epure_new" ??? au lieu de "trajet_epure". C'est un sous ensemble de la table "recalibration.trajet_epure_proc_r" avec des covariables en plus. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> La table "trajet_epure_proc_r" est créée en transformant la table "trajet_epure" du schema "public" ("public.trajet_epure"). Elle stocke des données GPS qui ont été modifiées (recalibrées) pour avoir un pas de temps homogène d'une minute entre deux positions GPS consécutives. Cela implique également un changement de la clé primaire "id_pos" qui n’est plus la même avec la recalibration et qui devient relative au numéro de trajet (clé composée).
Cette opération était nécessaire car la première série de capteurs GPS utilisés (Igotu) permettait d’obtenir des positions sur un pas de temps homogène (30 secondes environs) mais la seconde série de GPS  (autre marque) semble avoir des pas de temps hétérogènes d'un capteur à l'autre. Au delà de la simple harmonisation des données, la question du pas de temps idéal est également importante pour les modèles qui prédisent les opérations de pêches. Cela permet également d'alléger le volume de données stockées.

Cette procédure est réalisée à partir d’un script R et du package adehabitatLT.

Pour les données recalibrées, il faut ensuite préciser l’observation qui avait été faite sur les anciens points. Dans le cas où le point recalibré est après l'ancien point on ajoute la même observation ???. Dans le cas ou l’observation avant et après divergent,  une nouvelle observation “de transition” est crée qui est la concaténation des 2 observations des points avant et après dans la trajectoire. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Référentiel engins </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Référentiel pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Référentiel villages </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> ??? Référentiel espèces pour certains individus barcodés ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> La table "macroinvertebres" stocke les données de suivi au débarquement de la taxonomie des invertébrés (chalut à moustiquaire) : août 2018 – février 2019. Cette table regroupe des données de captures (Poids total de l’échantillon, Poids de chaque taxon, Nombre d’individus / taxon, Photo) et des données sur la surface balayée par l’engin. Article associé : "seagrass macroinvertebrates support mosquito net trawl fishing in Madagascar". Contact : Patricia Herinirina. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> La table "morphotypes" stocke les données de suivi au débarquement de la diversité des poissons avec des données de description des caractères anatomiques et des données d'analyse du code-barres de l'ADN. Objectif : promouvoir une identification fiable des poissons .capturés par différents engins </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photo_taille </td>
   <td style="text-align:left;"> La table "photo_taille" stocke les données de suivi au débarquement de la taille des poissons capturés par un système mesure automatisé à partir de photos (plus de 7.000 photos). Objectif : analyse de la distribution de taille de poissons capturés par engin de pêche selon les familles et variation temporelle. Proportion des adultes et juvéniles dans les captures (en nombre). [Papiers associés](https://www.sciencedirect.com/science/article/abs/pii/S0165783619302802). Contact : Sandra Ranaivomanana </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photos_morpho </td>
   <td style="text-align:left;"> La table "photos_morpho"  stockes les données avec les photographie individuelle d’un représentant de chaque morphotype. Objectif : promouvoir une identification fiable des poissons capturés par différents engins. Contact: Anissa Volanandiana. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_famille </td>
   <td style="text-align:left;"> la table "ref_famille" est la même table que dans la table "???" du schema "ref" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_observateur </td>
   <td style="text-align:left;"> les mêmes que dans Postgres (engins, observateurs, pêcheurs, familles, villages, toponymes / sites de pêche..) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> la table "ref_pecheur" est la même table que dans la table "pecheur" du schema "ref" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_site_peche </td>
   <td style="text-align:left;"> les mêmes que dans Postgres (engins, observateurs, pêcheurs, familles, villages, toponymes / sites de pêche..) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> les mêmes que dans Postgres (engins, observateurs, pêcheurs, familles, villages, toponymes / sites de pêche..) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> remplie par pêcheurs équipés du GPS pendant la période de thèse de Faustinato </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> ??? Hiérarchie entre les topoymes ??? Basée sur quoi ??? De l'analyse spatiale avec des intersections, inclusion... ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> svg </td>
   <td style="text-align:left;"> trajet_epure_8_11 </td>
   <td style="text-align:left;"> sauvegarde de XXX </td>
  </tr>
  <tr>
   <td style="text-align:left;"> svg </td>
   <td style="text-align:left;"> trajet_epure_proc_r_8_11 </td>
   <td style="text-align:left;"> sauvegarde de XXX </td>
  </tr>
</tbody>
</table>


# The columns


<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<caption>Description of columns</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> schema </th>
   <th style="text-align:left;"> table </th>
   <th style="text-align:left;"> column </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Identifiant numérique séquentiel (auto-incrémenté) qui donne le numéro du point GPS à l'intérieur d'une trajectoire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> Indique si le point GPS est prédit en pêche ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> Code du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> date_heure </td>
   <td style="text-align:left;"> Date et heure (timestamp) donné par le GPS, en UTC ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> longitude </td>
   <td style="text-align:left;"> Longitude du point GPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> latitude </td>
   <td style="text-align:left;"> Latitude du point GPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> geom_spatial </td>
   <td style="text-align:left;"> Géométrie, type de données spatial, créée à partir de la latitude et de la longitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> coup_peche </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> site_peche </td>
   <td style="text-align:left;"> site de pêche déclaré par les pêcheurs (indiqué par un topoyme) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> etat_detaille </td>
   <td style="text-align:left;"> Observations réalisées à bord par des observateurs embarqués pour indiquer l'activité / opération de pêche (mais pas toujours de bonne qualité et moins fiable qu'avec QGIS). Cette colonne décrit la nature de l'activité de pêche : "pose_filet ", "NA ", "Collecte_captue ", "Recherche_bon_endroit ", "Pose_filet ", "remonter_filet ", "trait_de_la senne ", "peche_au_fustilaridae ", "route_village ", "Volie_bas ", "Attente_avant_pose_filet ", "collecte_captures ", "recuperation_senne ", "depart ", "decrochage_senne_sur_coraux ", "retour ", "Attenta_avant_pose_filet ", "Remonter_filet ", "Action_peche ", "voile_bas ", "Retour ", "Depart ", "recherche_du_bon_endroit ", "Autre_technique ", "pose_senne ", "rabattage_poisson ", "dpirogue_desencree ", "action_peche ", "Rabatage_poissons ", "Collecte_capture","actions_peche ", "Tirer_filet ", "Voile_haut ", "deplacement_vers_autre_site ", "recherche_bon_endroit ", "Remonter_filet_collecte ", "trait _senne ", "Recherche_bon__endroit ", "route_site ", "Voile_bas", "Voile-bas ", "Rabattage_poisson ", "remontee_senne ", "voile_haut ", "attente_avant_pose_senne ", "Deplacement_autre_site ", "volie_haut ", "deplacement_autre_site ", "departe ", "trait_senne" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> etat_agrege </td>
   <td style="text-align:left;"> Ce sont des données d'observation produits sur QGIS par Roddy qui indique si le point GPS est a priori en pêche ou pas. Ces sont les données d’entraînement nécessaires pour le modèle de prédiction. Cette colonne décrit si le point est en pêche ou non : "Non_peche", "non_peche", "peche", "Peche", "Preparation" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Identifiant numérique séquentiel (auto-incrémenté) qui donne le numéro du point GPS à l'intérieur d'une trajectoire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> date_insert </td>
   <td style="text-align:left;"> Date du jour de l’importation des données </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> type_gps </td>
   <td style="text-align:left;"> Type (modèle) du GPS utilisé pour suivre la trajectoire des pirogues :  catalog et ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet </td>
   <td style="text-align:left;"> en_mer </td>
   <td style="text-align:left;"> ?? booléen qui indique si le point est en mer ou non ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> Code du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> date_heure </td>
   <td style="text-align:left;"> Date et heure (timestamp) donné par le GPS, en UTC ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> longitude </td>
   <td style="text-align:left;"> Longitude du point GPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> latitude </td>
   <td style="text-align:left;"> Latitude du point GPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> geom_spatial </td>
   <td style="text-align:left;"> Géométrie, type de données spatial, créée à partir de la latitude et de la longitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> coup_peche </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> site_peche </td>
   <td style="text-align:left;"> site de pêche déclaré par les pêcheurs (indiqué par un topoyme) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> etat_detaille </td>
   <td style="text-align:left;"> Observations à bord pour indiquer l'activité / opération de pêche (mais pas toujours de bonne qualité et moins fiable qu'avec QGIS). Cette colonne décrit la nature de l'activité de pêche : "pose_filet ", "NA ", "Collecte_captue ", "Recherche_bon_endroit ", "Pose_filet ", "remonter_filet ", "trait_de_la senne ", "peche_au_fustilaridae ", "route_village ", "Volie_bas ", "Attente_avant_pose_filet ", "collecte_captures ", "recuperation_senne ", "depart ", "decrochage_senne_sur_coraux ", "retour ", "Attenta_avant_pose_filet ", "Remonter_filet ", "Action_peche ", "voile_bas ", "Retour ", "Depart ", "recherche_du_bon_endroit ", "Autre_technique ", "pose_senne ", "rabattage_poisson ", "dpirogue_desencree ", "action_peche ", "Rabatage_poissons ", "Collecte_capture","actions_peche ", "Tirer_filet ", "Voile_haut ", "deplacement_vers_autre_site ", "recherche_bon_endroit ", "Remonter_filet_collecte ", "trait _senne ", "Recherche_bon__endroit ", "route_site ", "Voile_bas", "Voile-bas ", "Rabattage_poisson ", "remontee_senne ", "voile_haut ", "attente_avant_pose_senne ", "Deplacement_autre_site ", "volie_haut ", "deplacement_autre_site ", "departe ", "trait_senne" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> etat_agrege </td>
   <td style="text-align:left;"> Ce sont des données d'observation produits sur QGIS par Roddy qui indique si le point GPS est a priori en pêche ou pas. Ces sont les données d’entraînement nécessaires pour le modèle de prédiction. Cette colonne décrit si le point est en pêche ou non : "Non_peche", "non_peche", "peche", "Peche", "Preparation" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Identifiant numérique séquentiel (auto-incrémenté) qui donne le numéro du point GPS à l'intérieur d'une trajectoire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> trajet_epure </td>
   <td style="text-align:left;"> no_trajet </td>
   <td style="text-align:left;"> Indique le nombre de secondes entre deux points de positions différents. Quand il y a plus de 6 heures entre deux points, on considére que ce sont deux trajectoires / sorties de pêche différentes. Le paramètre de 6h a été choisi selon habitudes des pêcheurs. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> no_trajet </td>
   <td style="text-align:left;"> ?? Numéro de la trajectoire GPS ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Identifiant numérique séquentiel (auto-incrémenté) qui donne le numéro du point GPS à l'intérieur d'une trajectoire. ?? Est-ce que c'est la clé primaire pour cette table dans le schéma public ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> pecheur_id </td>
   <td style="text-align:left;"> ??Différence avec code pêcheur ?? Clé composée avec les identifiants villages,engins et pêcheurs ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> date_heure </td>
   <td style="text-align:left;"> Date et heure (timestamp) donné par le GPS, en UTC ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> distance </td>
   <td style="text-align:left;"> distance parcourue entre les deux points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> duree </td>
   <td style="text-align:left;"> ?? Durée écoulée entre deux points  GPS ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> etat_detaille </td>
   <td style="text-align:left;"> Observations à bord pour indiquer l'activité / opération de pêche (mais pas toujours de bonne qualité et moins fiable qu'avec QGIS). Cette colonne décrit la nature de l'activité de pêche : "pose_filet ", "NA ", "Collecte_captue ", "Recherche_bon_endroit ", "Pose_filet ", "remonter_filet ", "trait_de_la senne ", "peche_au_fustilaridae ", "route_village ", "Volie_bas ", "Attente_avant_pose_filet ", "collecte_captures ", "recuperation_senne ", "depart ", "decrochage_senne_sur_coraux ", "retour ", "Attenta_avant_pose_filet ", "Remonter_filet ", "Action_peche ", "voile_bas ", "Retour ", "Depart ", "recherche_du_bon_endroit ", "Autre_technique ", "pose_senne ", "rabattage_poisson ", "dpirogue_desencree ", "action_peche ", "Rabatage_poissons ", "Collecte_capture","actions_peche ", "Tirer_filet ", "Voile_haut ", "deplacement_vers_autre_site ", "recherche_bon_endroit ", "Remonter_filet_collecte ", "trait _senne ", "Recherche_bon__endroit ", "route_site ", "Voile_bas", "Voile-bas ", "Rabattage_poisson ", "remontee_senne ", "voile_haut ", "attente_avant_pose_senne ", "Deplacement_autre_site ", "volie_haut ", "deplacement_autre_site ", "departe ", "trait_senne" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> etat_agrege </td>
   <td style="text-align:left;"> Ce sont des données d'observation produits sur QGIS par Roddy qui indique si le point GPS est a priori en pêche ou pas. Ces sont les données d’entraînement nécessaires pour le modèle de prédiction. Cette colonne décrit si le point est en pêche ou non : "Non_peche", "non_peche", "peche", "Peche", "Preparation" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed2 </td>
   <td style="text-align:left;"> vitesse entre les 2 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed3 </td>
   <td style="text-align:left;"> vitesse entre les 3 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed4 </td>
   <td style="text-align:left;"> vitesse entre les 4 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed5 </td>
   <td style="text-align:left;"> vitesse entre les 5 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv5p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 5 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv6p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 6 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv7p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 7 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv8p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 8 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv9p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 9 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv10p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 10 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv5 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 5 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv6 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 6 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv7 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 7 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv8 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 8 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv9 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 9 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv10 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 10 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle20 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 20 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle50 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 50 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle80 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 80 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle110 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 110 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle150 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 150 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle180 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 180 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> geom_spatial </td>
   <td style="text-align:left;"> Géomérie (type de donnée spatial) associé au point </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> Indique si le point GPS est prédit en pêche ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> etat_predit </td>
   <td style="text-align:left;"> Identifiant numérique séquentiel (auto-incrémenté) qui donne le numéro du point GPS à l'intérieur d'une trajectoire avec laquelle il qui constitue la clé composée. Dans le schema "recalibration", “idpos” est donc relatif au numéro de trajet. </td>
   <td style="text-align:left;"> Changement de clé primaire (clé composée) car  “idpos” qui n’est plus le même avec la recalibration. “idpos” est maintenant relatif au numéro de trajet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle110 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 110 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle150 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 150 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle180 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 180 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle20 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 20 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle50 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 50 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> cercle80 </td>
   <td style="text-align:left;"> covariable : on crée un buffer de 80 m autour du point et on regarde le nombre des points de la même trajectoire qui sont dans ce buffer </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv10 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 10 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv10p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 10 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv5 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 5 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv5p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 5 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv6 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 6 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv6p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 6 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv7 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 7 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv7p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 7 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv8 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 8 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv8p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 8 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv9 </td>
   <td style="text-align:left;"> on calcule la surface du convexhull pour les 9 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> conv9p </td>
   <td style="text-align:left;"> on calcule le périmètre du convexhull pour les 9 derniers points pour avoir un indice d’agrégation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> date_heure </td>
   <td style="text-align:left;"> ?? Date et heure (timestamp) recalculées à partir de l'heure donnée par le GPS dans la données brute, en UTC ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> distance </td>
   <td style="text-align:left;"> distance parcourue entre les deux points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> duree </td>
   <td style="text-align:left;"> ?? Durée écoulée entre deux points  GPS ?? Quand la durée est supérieure à 1 heure, le deuxième point est considéré comme le début d’un nouveau trajet. La seuil choisi pour le durée choisie peut être discuté selon les engins, en particulier pour ceux qui reviennent à terre pendant les opérations de pêche (seine de plage par exemple). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> etat_agrege </td>
   <td style="text-align:left;"> Ce sont des données d'observation produits sur QGIS par Roddy qui indique si le point GPS est a priori en pêche ou pas. Ces sont les données d’entraînement nécessaires pour le modèle de prédiction. Cette colonne décrit si le point est en pêche ou non : "Non_peche", "non_peche", "peche", "Peche", "Preparation" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> etat_detaille </td>
   <td style="text-align:left;"> Observations à bord pour indiquer l'activité / opération de pêche (mais pas toujours de bonne qualité et moins fiable qu'avec QGIS). Cette colonne décrit la nature de l'activité de pêche : "pose_filet ", "NA ", "Collecte_captue ", "Recherche_bon_endroit ", "Pose_filet ", "remonter_filet ", "trait_de_la senne ", "peche_au_fustilaridae ", "route_village ", "Volie_bas ", "Attente_avant_pose_filet ", "collecte_captures ", "recuperation_senne ", "depart ", "decrochage_senne_sur_coraux ", "retour ", "Attenta_avant_pose_filet ", "Remonter_filet ", "Action_peche ", "voile_bas ", "Retour ", "Depart ", "recherche_du_bon_endroit ", "Autre_technique ", "pose_senne ", "rabattage_poisson ", "dpirogue_desencree ", "action_peche ", "Rabatage_poissons ", "Collecte_capture","actions_peche ", "Tirer_filet ", "Voile_haut ", "deplacement_vers_autre_site ", "recherche_bon_endroit ", "Remonter_filet_collecte ", "trait _senne ", "Recherche_bon__endroit ", "route_site ", "Voile_bas", "Voile-bas ", "Rabattage_poisson ", "remontee_senne ", "voile_haut ", "attente_avant_pose_senne ", "Deplacement_autre_site ", "volie_haut ", "deplacement_autre_site ", "departe ", "trait_senne" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> geom_spatial </td>
   <td style="text-align:left;"> Géomérie (type de donnée spatial) associé au point </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Changement de clé primaire (clé composée) car  “idpos” qui n’est plus le même avec la recalibration. “idpos” est maintenant relatif au numéro de trajet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> idpos_init </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> no_trajet </td>
   <td style="text-align:left;"> ?? Numéro de la trajectoire GPS ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> pecheur_id </td>
   <td style="text-align:left;"> ??Différence avec code pêcheur ?? Clé composée avec les identifiants villages,engins et pêcheurs ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed2 </td>
   <td style="text-align:left;"> vitesse entre les 2 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed3 </td>
   <td style="text-align:left;"> vitesse entre les 3 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed4 </td>
   <td style="text-align:left;"> vitesse entre les 4 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> prepa_predict_etat </td>
   <td style="text-align:left;"> speed5 </td>
   <td style="text-align:left;"> vitesse entre les 5 derniers points </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> Code du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> date_heure </td>
   <td style="text-align:left;"> ?? Date et heure (timestamp) recalculées à partir de l'heure donnée par le GPS dans la données brute, en UTC ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> longitude </td>
   <td style="text-align:left;"> ?? Longitude du point GPS calculée à partir de la nouvelle géométrie ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> latitude </td>
   <td style="text-align:left;"> ?? Latitude du point GPS calculée à partir de la nouvelle géométrie ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> geom_spatial </td>
   <td style="text-align:left;"> Géomérie (type de donnée spatial) associé au point recalculée par la recalibration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> coup_peche </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> site_peche </td>
   <td style="text-align:left;"> site de pêche déclaré par les pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> etat_detaille </td>
   <td style="text-align:left;"> Observations à bord pour indiquer l'activité / opération de pêche (mais pas toujours de bonne qualité et moins fiable qu'avec QGIS). Cette colonne décrit la nature de l'activité de pêche : "pose_filet ", "NA ", "Collecte_captue ", "Recherche_bon_endroit ", "Pose_filet ", "remonter_filet ", "trait_de_la senne ", "peche_au_fustilaridae ", "route_village ", "Volie_bas ", "Attente_avant_pose_filet ", "collecte_captures ", "recuperation_senne ", "depart ", "decrochage_senne_sur_coraux ", "retour ", "Attenta_avant_pose_filet ", "Remonter_filet ", "Action_peche ", "voile_bas ", "Retour ", "Depart ", "recherche_du_bon_endroit ", "Autre_technique ", "pose_senne ", "rabattage_poisson ", "dpirogue_desencree ", "action_peche ", "Rabatage_poissons ", "Collecte_capture","actions_peche ", "Tirer_filet ", "Voile_haut ", "deplacement_vers_autre_site ", "recherche_bon_endroit ", "Remonter_filet_collecte ", "trait _senne ", "Recherche_bon__endroit ", "route_site ", "Voile_bas", "Voile-bas ", "Rabattage_poisson ", "remontee_senne ", "voile_haut ", "attente_avant_pose_senne ", "Deplacement_autre_site ", "volie_haut ", "deplacement_autre_site ", "departe ", "trait_senne" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> etat_agrege </td>
   <td style="text-align:left;"> Ce sont des données d'observation produits sur QGIS par Roddy qui indique si le point GPS est a priori en pêche ou pas. Ces sont les données d’entraînement nécessaires pour le modèle de prédiction. Cette colonne décrit si le point est en pêche ou non : "Non_peche", "non_peche", "peche", "Peche", "Preparation" </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> idpos </td>
   <td style="text-align:left;"> Changement de clé primaire (clé composée) car  “idpos” qui n’est plus le même avec la recalibration. “idpos” est maintenant relatif au numéro de trajet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> recalibration </td>
   <td style="text-align:left;"> trajet_epure_proc_r </td>
   <td style="text-align:left;"> no_trajet </td>
   <td style="text-align:left;"> ?? Numéro de la trajectoire GPS ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> nom_engin </td>
   <td style="text-align:left;"> Nom de l'engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> Code du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> nom_pecheur </td>
   <td style="text-align:left;"> Nom du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> nom_village </td>
   <td style="text-align:left;"> Nom du village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> lat_village </td>
   <td style="text-align:left;"> Latitude du point utilisé pour localiser le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> long_village </td>
   <td style="text-align:left;"> Longitude du point utilisé pour localiser le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ref </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> pos_village </td>
   <td style="text-align:left;"> la géométrie avec un type de données spatial </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> code_ech </td>
   <td style="text-align:left;"> le code des échantillons est composé : 

 - du code de village (S : Sarodrano, L: Ankilibe, H: Ankiembe-haut, M : Mahavatse 1, K : Ankiembe-bas, V: Mahavatse 2, B: Besakoa, O: Ambohitsabo),
 - de l’engin de pêche (FM: Filet Maillant, LN: Ligne à main, SF : Senne de Fond, FU: Fusil harpon, SP: Sennes de Plage)
 - du numéro de fiche ; 
 - de la taille des captures (G = Gros : 15cm &lt; poisson, M = Moyen ; 8cm &lt;poisson&lt;15cm, P = Petit ; 4cm &lt;poisson&lt;8cm, B = Très Petit (Bébé) ; poisson&lt;4cm) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> famille </td>
   <td style="text-align:left;"> Nom de famille des poissons (après identification) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> genre </td>
   <td style="text-align:left;"> Nom de genre de poissons donné par barcoding </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> Nom d’espèce de poissons donné par barcoding </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> id_morphospecie </td>
   <td style="text-align:left;"> Identificant de la morpho-espèce. Numéro d’identification des morphotypes considérés comme des espèces différentes. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> nbr_individu </td>
   <td style="text-align:left;"> ?? Nombre de l’individu ?? Nombre d’individu (poissons) dans une photo?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> espece </td>
   <td style="text-align:left;"> id_photo </td>
   <td style="text-align:left;"> ID des photos de poissons. Nom de fichier qui correspond au code alpha-numérique attribué à la photo par l’appareil. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> num_fiche </td>
   <td style="text-align:left;"> numéro de la fiche de suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> categ_taille </td>
   <td style="text-align:left;"> Catégories de tailles  des poissons (échantillons) : Gros, Moyen, Petit et Bébé (avec G = Gros : 15cm &lt; poisson) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> poids_ech_categ </td>
   <td style="text-align:left;"> poids échantillon par catégorie taille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> code_ech </td>
   <td style="text-align:left;"> Code échantillon : combinaison de "code village" + "code engin" + "numéro fiche" + "catégorie taille" ( le code village, le code de l’engin de pêche, le numéro fiche de suivi de débarquement et la taille des poissons (cf table « espèce », 1e paragraphe).
code des échantillons composé : 
 - du code de village (S : Sarodrano, L: Ankilibe, H: Ankiembe-haut, M : Mahavatse 1, K : Ankiembe-bas, V: Mahavatse 2, B: Besakoa, O: Ambohitsabo),
 - de l’engin de pêche (FM: Filet Maillant, LN: Ligne à main, SF : Senne de Fond, FU: Fusil harpon, SP: Sennes de Plage)
 - du numéro de fiche ; 
 - de la taille des captures (G = Gros : 15cm &lt; poisson, M = Moyen ; 8cm &lt;poisson&lt;15cm, P = Petit ; 4cm &lt;poisson&lt;8cm, B = Très Petit (Bébé) ; poisson&lt;4cm) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_famille </td>
   <td style="text-align:left;"> NO </td>
   <td style="text-align:left;"> numéro de famille de poisson enregistrée pendant le suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_famille </td>
   <td style="text-align:left;"> famille </td>
   <td style="text-align:left;"> famille de poisson enregistrée pendant le suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_famille </td>
   <td style="text-align:left;"> coef_a </td>
   <td style="text-align:left;"> coefficient de corrélation pour obtenir les poids à partir de la taille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_famille </td>
   <td style="text-align:left;"> coef_b </td>
   <td style="text-align:left;"> coefficient de corrélation pour obtenir les poids à partir de la taille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_observateur </td>
   <td style="text-align:left;"> NO </td>
   <td style="text-align:left;"> numéro d’observateur de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_observateur </td>
   <td style="text-align:left;"> observateur </td>
   <td style="text-align:left;"> nom de celui/celle qui a enregistré les informations lors des travails sur terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> code de village à suivre avec S: Sarodrano, L: Ankilibe, H: Ankiembe-haut, M: Mahavatse 1, K : Ankiembe-bas, V: Mahavatse 2, B: Besakoa, O: Ambohitsabo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> nom_pecheur </td>
   <td style="text-align:left;"> nom de pêcheur recensé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> code engin de pêche déclarée par les pêcheurs avec FM : Filet Maillant, LN : Ligne à main, SF : Senne de Fond, FU : Fusil harpon, SP : Sennes de Plage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> num_pecheur </td>
   <td style="text-align:left;"> numéro pêcheur enregistré pour chaque village et engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> code pêcheur suivant le code village, le code engin et le numéro pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> nb_prg </td>
   <td style="text-align:left;"> nombre des personnes à bord de pirogue déclaré par le pêcheur pendant le récensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long_prg_1 </td>
   <td style="text-align:left;"> longueur de la première pirogue active de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long_prg_2 </td>
   <td style="text-align:left;"> longueur de la deuxième pirogue active de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long_prg_3 </td>
   <td style="text-align:left;"> longueur de la troisième pirogue active de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long_prg_4 </td>
   <td style="text-align:left;"> longueur de la quatrième pirogue active de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> nb_eg_stk </td>
   <td style="text-align:left;"> nombre engin stocké de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> nb_eg_utl </td>
   <td style="text-align:left;"> nombre engin utilisé de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long(m) </td>
   <td style="text-align:left;"> longueur en mètre de filet ou de senne de plage ou de chalut à moustiquaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> haut (m) </td>
   <td style="text-align:left;"> hauteur en mètre de filet ou de senne de plage ou de chalut à moustiquaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> maille (mm) </td>
   <td style="text-align:left;"> maille en millimètre de filet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> type_fil </td>
   <td style="text-align:left;"> type des engins de pêche (nylon, moustiquaire …) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> long_corde_senne (m) </td>
   <td style="text-align:left;"> longueur de la corde des engins senne de plage et chalut à moustiquaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> num_hamecon </td>
   <td style="text-align:left;"> dimension de hameçon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> corde_kg </td>
   <td style="text-align:left;"> force de file pour l’engin ligne à main </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> pers_a_bord </td>
   <td style="text-align:left;"> nombre de personne à bord de pirogue déclaré par les pêcheurs pendant le recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_1 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_2 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_3 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_4 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_5 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> periode_6 </td>
   <td style="text-align:left;"> Période de suivi de pêche avec periode_1 : mai-juin, periode_2 : juillet-août, periode_3 : septembre-octobre, periode_4 : novembre-décembre, periode_5 : janvier-février, periode_6 : mars-avril </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> Champ1 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_pecheur </td>
   <td style="text-align:left;"> Champ2 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_resultat_taille </td>
   <td style="text-align:left;"> id_photo </td>
   <td style="text-align:left;"> ID des photos de poissons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_resultat_taille </td>
   <td style="text-align:left;"> taille_cm </td>
   <td style="text-align:left;"> taille en cm de chaque poisson mesuré avec ImageJ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> ref_site_peche </td>
   <td style="text-align:left;"> site </td>
   <td style="text-align:left;"> site de pêche déclaré par les pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> num_fiche </td>
   <td style="text-align:left;"> numéro de la fiche de suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> date_echg </td>
   <td style="text-align:left;"> date de l’échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> maree </td>
   <td style="text-align:left;"> marée de l’échantillonnage avec VE = vives eaux ; ME= Mortes eaux </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> nom des villages échantillonné avec S : Sarodrano ; L : Ankilibe ;  K : Ankiembe bas ; H : Ankiembe Haut  ;  M : Mahavatse I ; V : Mahavatse II ; B : Besakoa ;  O :Ambohitsabo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> engin de pêche utilisé pendant le jour d’échantillonnage avec FM : filet maillant ; LN : ligne à main ; SP :Senne de plage ; SF : chalut à moustiquaire ; FU : fusil harpon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> code de pêcheur échantillonnée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> nom_pecheur </td>
   <td style="text-align:left;"> nom du pêcheur échantillonnée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> cap_tot_brute </td>
   <td style="text-align:left;"> poids de la capture totale pour une pirogue toute catégorie confondue (poissons et invertébrés). pour les filets moustiquaires ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> cap_tot_poisson </td>
   <td style="text-align:left;"> poids de la capture totale des poissons pour une pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> poids_ech_total </td>
   <td style="text-align:left;"> poids de l’échantillon total prélevé lors de l’échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> nbr_pecheur </td>
   <td style="text-align:left;"> nombre de pêcheur à bord de la pirogue durant la sortie de pêche qui correspond à l'’échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> site_1 </td>
   <td style="text-align:left;"> lieu de pêche visité par le pêcheur le jour de l'échantillonnage. Toponyme du site où le pêcheur est allé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> site_2 </td>
   <td style="text-align:left;"> lieu de pêche visité par le pêcheur le jour de l'échantillonnage. Toponyme du site où le pêcheur est allé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> site_3 </td>
   <td style="text-align:left;"> lieu de pêche visité par le pêcheur le jour de l'échantillonnage. Toponyme du site où le pêcheur est allé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> site_4 </td>
   <td style="text-align:left;"> lieu de pêche visité par le pêcheur le jour de l'échantillonnage. Toponyme du site où le pêcheur est allé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> station </td>
   <td style="text-align:left;"> observateur </td>
   <td style="text-align:left;"> nom de la personne qui a enregistré les informations le jour de l’échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> date_sortie </td>
   <td style="text-align:left;"> date de sortie de pêche enregistré par le pêcheur ou l’assistant local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> nom des villages à suivre avec S : Sarodrano ; L : Ankilibe ;  K : Ankiembe bas ; H : Ankiembe Haut  ;  M : Mahavatse I ; V : Mahavatse II ; B : Besakoa ;  O :Ambohitsabo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> engin de pêche utilisé pendant la sortie de pêche avec FM : filet maillant ; LN : ligne à main ; SP :Senne de plage ; SF : chalut à moustiquaire ; FU : fusil harpon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> code pêcheur à suivre suivant le code des villages, la code des engins et le numéro des pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> nom_pecheur </td>
   <td style="text-align:left;"> nom du pêcheur à suivre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> jour_nuit </td>
   <td style="text-align:left;"> statut de sortie de pêche : jour ; nuit ; pas sortie ; non communiqué. Indique s'il s'agit d'une sortie nocturne ou pas. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> site_1 </td>
   <td style="text-align:left;"> lieu de pêche visité pendant la sortie ; indiqué par les pêcheurs à l'aide d'un toponyme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> site_2 </td>
   <td style="text-align:left;"> lieu de pêche visité pendant la sortie ; indiqué par les pêcheurs à l'aide d'un toponyme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> site_3 </td>
   <td style="text-align:left;"> lieu de pêche visité pendant la sortie ; indiqué par les pêcheurs à l'aide d'un toponyme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> site_4 </td>
   <td style="text-align:left;"> lieu de pêche visité pendant la sortie ; indiqué par les pêcheurs à l'aide d'un toponyme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> nombre_pecheur </td>
   <td style="text-align:left;"> nombre de personnes à bord de la pirogue pendant la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_poissons_recifaux </td>
   <td style="text-align:left;"> poids total des poissons récifaux capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_poissons_pelagiques </td>
   <td style="text-align:left;"> poids total des poissons pélagiques capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_ppp </td>
   <td style="text-align:left;"> petit poissons récifaux </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_crabe_bon </td>
   <td style="text-align:left;"> poids total des crabes comestibles capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_crabe_mauvais </td>
   <td style="text-align:left;"> poids total des petits crabes non consommés capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_crevette </td>
   <td style="text-align:left;"> poids total des crevettes capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> suivi_participatif </td>
   <td style="text-align:left;"> poids_calamar </td>
   <td style="text-align:left;"> poids total des calmars capturés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> site2018 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> niveau1 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> niveau2 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> niveau3 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> topo_hierarchie </td>
   <td style="text-align:left;"> niveau4 </td>
   <td style="text-align:left;"> ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> num_fiche </td>
   <td style="text-align:left;"> numéro de la fiche de suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> date_echg </td>
   <td style="text-align:left;"> date de l’échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> code_village </td>
   <td style="text-align:left;"> Code du village dans lequel se trouve la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par la pirogue du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> Code du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> maree </td>
   <td style="text-align:left;"> Marée : Vives Eaux et Mortes Eaux </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> site </td>
   <td style="text-align:left;"> ?? Toponyme ?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> ??Nom du pêcheur?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> code_ech </td>
   <td style="text-align:left;"> ?? 
code échantillon suivant le code village, le code de l’engin de pêche, le numéro fiche de suivi de débarquement et la taille des poissons (cf table « sepece », 1e paragraphe). code village + code enfin + numéro fiche + code taille
code des échantillons composé : 
 - du code de village (S : Sarodrano, L: Ankilibe, H: Ankiembe-haut, M : Mahavatse 1, K : Ankiembe-bas, V: Mahavatse 2, B: Besakoa, O: Ambohitsabo),
 - de l’engin de pêche (FM: Filet Maillant, LN: Ligne à main, SF : Senne de Fond, FU: Fusil harpon, SP: Sennes de Plage)
 - du numéro de fiche ; 
 - de la taille des captures (G = Gros : 15cm &lt; poisson, M = Moyen ; 8cm &lt;poisson&lt;15cm, P = Petit ; 4cm &lt;poisson&lt;8cm, B = Très Petit (Bébé) ; poisson&lt;4cm)
?? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> familles </td>
   <td style="text-align:left;"> Identification au niveau de la famille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> especes </td>
   <td style="text-align:left;"> Identification au niveau de l'espèce </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> id_photo </td>
   <td style="text-align:left;"> ???Identifiant alpha-numérique de la photo de l'échantillon??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> cap_tot_brute </td>
   <td style="text-align:left;"> ??poids de la capture totale pour une pirogue toute catégorie confondue (poissons et invertébrés). pour les filets moustiquaires ? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> abondance_n </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> poids_eche_g </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> poids_g </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> distance_trait_m </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> pente_q </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> longueur_engin_lt_m </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> lm_m </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> surface_m </td>
   <td style="text-align:left;"> ??? Surface en m2 balayée par l'engin (chalut à moustiquaire) ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> surface_km </td>
   <td style="text-align:left;"> ??? Surface en km2  balayée par l'engin (chalut à moustiquaire) ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> densite_ind_km </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> densite_extrapole </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> biomass_g_m </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> macroinvertebres </td>
   <td style="text-align:left;"> biomass_extrapole </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> id_morphotype </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> bin </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> family </td>
   <td style="text-align:left;"> ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> genus </td>
   <td style="text-align:left;"> Nom de genre obtenu par analyse barcoding d’ADN (prélèvement d’un bout de la nageoire caudale d’un représentant de chaque morphotype conservé dans un tube avec de l’alcool à 90°.genre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> morphotypes </td>
   <td style="text-align:left;"> species </td>
   <td style="text-align:left;"> Nom d'espèce obtenu par analyse barcoding d’ADN (prélèvement d’un bout de la nageoire caudale d’un représentant de chaque morphotype conservé dans un tube avec de l’alcool à 90°. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photos_morpho </td>
   <td style="text-align:left;"> id_photo </td>
   <td style="text-align:left;"> Photographie individuelle d’un représentant  de chaque morphotype </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photos_morpho </td>
   <td style="text-align:left;"> id_morphotype </td>
   <td style="text-align:left;"> ?? Clé alpha_numérique composé de ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photo_taille </td>
   <td style="text-align:left;"> num_fiche </td>
   <td style="text-align:left;"> numéro de la fiche de suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photo_taille </td>
   <td style="text-align:left;"> taille_cm </td>
   <td style="text-align:left;"> ??? Taille de l'individu  mesurée automatiquement à partir de sa photographie ??? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> photo_taille </td>
   <td style="text-align:left;"> id_photo </td>
   <td style="text-align:left;"> ??? Identifiant alpha-numérique de la photo de l'individu mesuré ??? </td>
  </tr>
</tbody>
</table>


# Reference SQL queries

Ici on liste les requêtes de référence pour la base : 

- vues classiques ou matérialisées stockées directement dans la base.
- autres requêtes stockées sur github ou dans des tutoriels.










# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/data_dictionary.Rmd)

Ensemble de scripts R à jour qui montrent comment utiliser de la base :
[here](http://halieut.agrocampus-ouest.fr/BAS/scripts/BAS_jerome/9)

<!-- http://halieut.agrocampus-ouest.fr/BAS/scripts/BAS_jerome/4/ -->
<!-- https://halieut.agrocampus-ouest.fr/BAS/scripts/BAS_jerome/11/ -->
<!-- https://halieut.agrocampus-ouest.fr/BAS/scripts/BAS_jerome/9/ -->

 - description de la base Access par Sandra et Roddy : [Database schema of post-processed GPS data]( https://docs.google.com/document/d/1IhcqZNzA0DfiSmmc-s4sfqp4r99qNHlwlRZ_FRe2O4c/edit)
  - description de la base Access par Sandra et Roddy : [Database schema of post-processed GPS data](https://docs.google.com/document/d/1HQbymtJrTkLmJPcGqPgSZ-wsQ3qqANR42iOaa6o1n2w/edit#heading=h.vxl9f9c9ujgs)
  
  <!-- https://docs.google.com/presentation/d/1z3-wMcaoJieZKOgFoMxLzemwTRh4CzYo/edit#slide=id.p1 -->

# Annexes 

## Schemas

![Database schema of raw GPS data](https://drive.google.com/uc?id=1yQwK2fVztf8h5FOeUdIinuxKcjx0NRiF){width=40%} 

![Database schema of post-processed GPS data](https://drive.google.com/uc?id=1oTnVjXftx9n-wgzTDCZxT3D4WjNOl4dC){width=40%}

![Database schema of post-processed GPS data](https://drive.google.com/uc?id=1P5NnZ7g_2KS1A_kBhIl852u4sZFad1Vl){width=40%}

<!-- https://docs.google.com/document/d/174Ul3vDCqhfzAXhRmX-JhpY9JdehOTid/edit -->
