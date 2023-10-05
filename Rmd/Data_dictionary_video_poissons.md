---
title: "Data dictionary video poissons"
author: "Herinomena Andriamasinoro, Julien bard"
date: "2023-10-05"
output: 
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1pnqUyW63rt33lI5vy4CSSU71zEnrVyJ0fAau1HfzR8g/edit#gid=1131747976"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1pnqUyW63rt33lI5vy4CSSU71zEnrVyJ0fAau1HfzR8g/edit?usp=sharing"
---








# Introduction

This report describes the data dictionary for the "video fish monitoring" data. The contents are taken from the following Google spreadsheets:

* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1pnqUyW63rt33lI5vy4CSSU71zEnrVyJ0fAau1HfzR8g/edit#gid=1131747976)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1pnqUyW63rt33lI5vy4CSSU71zEnrVyJ0fAau1HfzR8g/edit?usp=sharing)

The content of the data dictionnary can be improved by editing the google spreadsheets.



# The tables

Here is the list and definition of tables in the data

<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<caption>Description of tables</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> table </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> Ce sont les informations sur chaque site de suivi de poisson. Dans un site, on trouve son nom local et la nomination de la vidéo d'enregistrement selon les replicats ou trasnsect. Cet dernier a sa position géographique avec la description de sa profondeur et sa catégorie du récif. Et aussi l'information si on a trouvé des poissons ou pas dans la vidéo . </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> C'est l'information sur chaque partie des vidéos d'enregistrement( nom et durée de la vidéo) . Elle est utile pour le montage du vrai durée d'enregistrement (15minutes). On se refère sur ces informations pour couper les parties inutiles de la vidéo sur ffmpeg. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> C'est l'annotation de la vidéo qu'on marque chaque temps où on trouve les individus de poisson avec leur classification taxonomique. </td>
  </tr>
</tbody>
</table>

# The columns


<table class="table table-striped table-hover" style="margin-left: auto; margin-right: auto;">
<caption>Description of columns</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> table </th>
   <th style="text-align:left;"> column </th>
   <th style="text-align:left;"> description </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> site </td>
   <td style="text-align:left;"> numéro de chaque site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> nom_site </td>
   <td style="text-align:left;"> nom du site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> nom_video </td>
   <td style="text-align:left;"> nomination de la vidéo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> numéro du transect dans chaque site qui représente les replicats </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> lat </td>
   <td style="text-align:left;"> latitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> lon </td>
   <td style="text-align:left;"> longitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> visibilité </td>
   <td style="text-align:left;"> détermination de la qualité d'image qui tient compte la turbidité et luminosité de l'eau. Classée en quatre : mauvaise ; moyenne; bonne; excellente </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> substrat </td>
   <td style="text-align:left;"> type de substrat et de fond </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> profondeur </td>
   <td style="text-align:left;"> profondeur sur chaque transect </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> classe_recif </td>
   <td style="text-align:left;"> catégorie du récif si c'est naturel ou artificiel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SITES </td>
   <td style="text-align:left;"> poisson </td>
   <td style="text-align:left;"> présence ou absence d'individu de poisson dans la video sur les transects </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> site </td>
   <td style="text-align:left;"> numéro de chaque site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> nom site </td>
   <td style="text-align:left;"> nom du site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> nom video </td>
   <td style="text-align:left;"> nomination de la vidéo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> transect </td>
   <td style="text-align:left;"> numéro du transect dans chaque site qui représente les replicats </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> partie </td>
   <td style="text-align:left;"> numéro de partie de video sur chaque transect </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> durée </td>
   <td style="text-align:left;"> durée de l'enregistrement de chaque partie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> t fin </td>
   <td style="text-align:left;"> temps final de l'enregistrement du dernière partie de video sur chaque transect </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> durée total </td>
   <td style="text-align:left;"> durée de l'enregistrement de toute l'ensemble des parties de vidéo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> t début </td>
   <td style="text-align:left;"> temps initial de l'enregistrement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> vrai t fin </td>
   <td style="text-align:left;"> temps final de l'enregistrement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> Vrai Durée </td>
   <td style="text-align:left;"> durée de l'enregistrement total ( 15minutes) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MINUTES </td>
   <td style="text-align:left;"> verification </td>
   <td style="text-align:left;"> vérification du 15minute la durée de l'enregistrement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> date de prélevement de la vidéo sur chaque site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> site </td>
   <td style="text-align:left;"> numéro de site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> nom_site </td>
   <td style="text-align:left;"> nom du site </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> lat </td>
   <td style="text-align:left;"> latitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> lon </td>
   <td style="text-align:left;"> longitude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> numéro du transect dans chaque site qui représente les replicats </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> nom_video </td>
   <td style="text-align:left;"> nomination de la vidéo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> temps </td>
   <td style="text-align:left;"> minutes de pause dans la vidéo qu'on trouve les poissons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> nombre de poisson sur la minute de pause </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> famille </td>
   <td style="text-align:left;"> famille de poisson sur la minute de pause </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> genre </td>
   <td style="text-align:left;"> genre de poisson sur la minute de pause </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> genre_espece </td>
   <td style="text-align:left;"> genre et espèces de poisson sur la minute de pause </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> taille </td>
   <td style="text-align:left;"> taille classée en trois : petite, moyenne, grand par rapport à la taille maximal de chaque espèce. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DATA </td>
   <td style="text-align:left;"> point_certitude </td>
   <td style="text-align:left;"> classé de 0 à 3 pour la vérification. 0 : impossible d’identifier ; 1 : n’est pas très sure 2 : plus ou moins sure ; 3 : sure </td>
  </tr>
</tbody>
</table>

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data_dictionary_video_poissons.Rmd)

