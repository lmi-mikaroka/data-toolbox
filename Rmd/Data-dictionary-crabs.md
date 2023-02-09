---
title: "Data dictionary Crabs"
author: "Barde Julien ,Herinomena Andriamasinoro"
date: "2023-02-09"
#always_allow_html: true
output: 
  html_document:
    number_sections: true
    toc: true
    theme: united
    keep_md: true
params: 
  gsheet_schemas: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1350070480"
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=896284500"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=28130720"
  crabs_schema_db: "https://drive.google.com/uc?id=1BHg7LEUJgpWA-9-plQYkgq6Fx4OtkepM"
---










# Introduction

This report describes the data dictionary of the "Corecrabe" database. The content is taken from the following google spreadsheets :  

* [List of colums for all schemas](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1350070480)
* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=896284500)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=28130720)

The content of the data dictionnary can be improved by editing the google spreadsheets.

![Database schema of CORECRABE](https://drive.google.com/uc?id=1BHg7LEUJgpWA-9-plQYkgq6Fx4OtkepM){width=100%}
 



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
   <td style="text-align:left;"> Le schéma "public" regroupe toutes les tables de la base de données corecrabe. Des enquetes sont effectuée au niveau de pecheurs par differents fiches d'enquetes ou une application endroid pour alimenter la base de données. </td>
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
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> La table activite enregistre le numero d'identification de l'activité et le nom de l'activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> la table activite à l'enquête recensement Fiche N° 5  enregistre le numero d'identification, l'activité,pourcentage et l'indentification correspondante à l'enquête recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement </td>
   <td style="text-align:left;"> La table activite_recensement Fiche N°5 enregistre si le pêcheur est en activité ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> la table activite à l'enquête recensement Fiche N° 6  enregistre le numero d'identification, l'activité,pourcentage et l'indentification correspondante à l'enquête recensement à la fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> La table Bac enregistre le numero, le type , le poids et le lot dans laquelle il appartient. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> La table Cargaison sauvegarde l'enregistrement le numero d'identification de la cargaison, la date de debarquements,date d'expedition,le moyen de transport, l'information sur le trie, le zone, l'enqueteur et la societe correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> La table Commune sauvegarde l'enregistrement du nom de la commune où l'enquête a été menée. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir une commune dans la liste disponible composant un district. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> La table Crabe enregistre  le numero d'identification de la crabe ,la longeur en mm , le sexe et le lot dans laquelle il appartient. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> La table Crabe  societe enregistre le numero d'identification de la crabe ,la longeur en mm , la destination, le sexe et l'echantion dans laquelle il est prelevé. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> La table District relève l'enregistrement du nom du district où l'enquête a été menée. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir un district dans la liste disponible composant une Région </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> La table Echantillon enregistre le numero d'identification ,le poids, s'il est trie, la taille absente, autre taille absente et le numero de la fiche correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> La table Engin enregistre la liste des engins avec leur nombre minimum et maximun utilisés par le pecheur (Nasse,crochet, racket, balance,ligne au mouillage,ligne à la canne, by catch) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> La table Engin Enquête recensement enregistre le numero d'identification, l'engin , année de début de pêche et l'identification d'enquête correspondante à l'enquête recensement fiche N° 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> La table Engin fiche pêcheur enregistre le numero d'identification,l'engin et leur nombre et l'identification du fiche pêcheur correspondante à la fiche pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_recensement </td>
   <td style="text-align:left;"> L'engin fiche_recensement enregistre le numero d'identification,l'engin et leur nombre et l'identification du fiche pêcheur correspondante à la fiche pêcheur recensé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> La table Engin sortie de peche acheteur enregistre le numero d'identification, l'engin et  leur nombre correspondante à  la sortie de peche acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> La table Engin sortie de peche enqueteur enregistre le numero d'identification, l'engin et leur nombre correspondante à la sortie de peche enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> La table enquête recensement enregistre le numero d'identification,pecheur,sexe,année de naissance,résident,pirogue,peche crabe toute l'année, type maré,periode de pêche et l'identification de fiche recensement  correspondante à la fiche recensement N° 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> La table enquête recensement mensuel (Fiche N° 6) enregistre le numero d'identification,pecheur et l'activité crabe pendant le mois d'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> La table enqueteur enregistre la liste des enqueteurs avec leur numero d'identification, le type leur code, leur nom ,login et le village dont ou il reside </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> La table enqueteur_structure_enqueteur enregistre le numero d'identification,  structure de l'enqueteur correpondate à l'identification de la structure enqueteur et l'enqueteur correspondate à l'identification de l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> La table Fiche enregistre la liste des fiches avec leur numero d'identification, le type ,l'années le mois le numero d'ordre, la date expedition et l'identification de l'enqueteur et le village correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> La table Fiche acheteurs enregistre la liste des fiches acheteurs avec leur numero d'identification,  la date et le nombre des pecheurs , les prix correspondant respectivement collecte1, collecte2, marche locale,crabes non vendue poids et nombres dentification du pecheur et le fiche correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> La table Fiche enqueteurs enregistre la liste des fiches enqueteurs avec leur numero d'identification,  la date de l'enquete et le nombre des participants , le poids de la captures , le poids et le nombres des crabes consommées, les prix correspondant respectivement collecte1, collecte2, marche locale,crabes non vendue poids et nombres dentification du pecheur et le fiche correspondante, le nombre de sortie du capture. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> La table Fiche pêcheurs enregistre la liste des fiches pêcheurs avec leur numero d'identification,la date de l'enquête , le partenaire de pêche et leur nombre, poids des crabes consommés, nombres des crabes consommés, poids de crabes destiné à la collecte, prix de crabes destiné à la collecte, poids de crabe destiné au marché local, nombre de crabe destiné au marché local, sortie avec pirogue et l'identification de fiche correspondante à la fiche de type pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> La table fiche_recensement enregistre la liste de tous les pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> La table Fokontany sauvegarde l'enregistrement du nom de la fonfontany où l'enquête a été menée. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir une fonkontany dans la liste disponible composant un district </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> La table lot enregistre le numero d'identification , le poids de la cargaisons , le village correspondant et le numero fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> La table pecheur enregistre la liste des pecheurs avec leur identifiant, le nom, le sexe, l'années de naissance, le village d'origine et activité ,l'engin pricipale et secondaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> La table provenance enregistre le numero d'identification, cargaison et village de provenace de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> La table recensement (fiche N° 5) enregistre le numero d'identification,date d'enquête,numéro d'ordre,l'identification de village d'enquête et l'identification d l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> La table recensement mensuel (Fiche N° 6) enregistre le numero d'identification, l'année,le mois, l'identification de l'enqueteur et l'identification de village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> La table recensement mensuel prime(Fiche N° 6 prime) enregistre le numero d'identification,, l'année,le mois, l'identification de l'enqueteur et l'identification de village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> La table recensement total actif enregistre les pêcheurs actifs (Fiche N°6) avec leur  le numero d'identification,, l'année,le mois, l'identification de l'enqueteur et l'identification de village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> La table Région contient l'enregistrement du nom de la Région où l'enquête a été menée. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir une Région dans la liste disponible (DIANA, BOENY, MENABE (Morondava ou morombe), ANTSIMO ANDREFANA). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> La table société enregistre le numero d'identification, nom , adresse, numero télephone, nom de personne en contact </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> La table sortie de peche acheteur enregistre le numero d'identification, la date et le nombre de sortie,le nombre de pirogue utilié et l'identification de la fiche correspondante à la fiche acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> La table sortie de peche enqueteur enregistre le numero d'identification, la date et le nombre de sortie,le nombre de pirogue utilié et l'identification de la fiche correspondante à la fiche enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> La table Structure enqueteur enregistre la liste des ONG ou les enqueteurs sont rattachées avec leur numero d'identification (RENAFEP, WWF, OCEA, MAGNIRIKE, BV, IRD, COPEFRITO,SOGEDIPROMA) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> La table village relève l'enregistrement du nom du village,  où l'enquête a été menée et ses données géographique, le sous zone et le bassin de collecte. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir un district dans la liste des villages et les renseignements y correspondantes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> La table Zone CORECRABE est destinée à l'enregistrement du non,la latitude et la longitude, la surface de mangrove et leur production de la Zone CORECRABE où l'enquête a été menée. Lors de la saisie d'une enquête, l'opérateur sera amené à choisir une zone dans la liste disponible (AMBANJA, MAHAJAMBA, MORONDAVA, MOROMBE-TOLIARA) et renseigner les paramatres correspondantes . </td>
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
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'Identifiant de l'activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> Le Nom de l'activité (Ex:CRABE,CREVETTE,POISSON,CHARBON,etc....) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero Identifiant de l'activité à l'enquête de recensement fiche N° 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> La Clé etrangère de la table enquete_recensement à la table activite_enquete_recensement dans la fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> La Clé etrangère de la table activite à la table activite_enquete_recensement(Fiche N°5) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> pourcentage </td>
   <td style="text-align:left;"> Le Pourcentage de l'activité du pêcheur à la fiche N° 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numéro d'Identification de la fiche recensement N°5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> Indiquant si la personne recensé est actif ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement </td>
   <td style="text-align:left;"> pourcentage </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'Identifiant de l'activité à l'enquête de recensement Fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> La Clé etrangère de la table enquete_recensement_mensuel à la table activite_enquete_recensement_mensuel dans la fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> La Clé etrangère de la table activite à la table activite_enquete_recensement_mensuel(Fiche N°6) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> pourcentage </td>
   <td style="text-align:left;"> Le Pourcentage de l'activité du pecheur à la fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'identifiant du bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> La Clé etrangère de la table lot à la table bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> Le Type du exemple </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> poidsbac </td>
   <td style="text-align:left;"> Le Poids du bac unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero Identifiant de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> datedebarquement </td>
   <td style="text-align:left;"> La Date de debarquement de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> poidstotalcargaison </td>
   <td style="text-align:left;"> Le Poids total de la cargaison unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> dateexpedition </td>
   <td style="text-align:left;"> La Date d'expédition de fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> transport </td>
   <td style="text-align:left;"> Le Type de transport de la cargaison (ex:) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> La Zone biogéographique de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> La Clé etrangère de la table enqueteur à la table cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> La Clé etrangère de la table societe à la table cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> trie </td>
   <td style="text-align:left;"> L'information si il y avait Triage avant ou après </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numéro d'identifiant de la commune généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> Le nom de la Commune où l'enquête a été menée. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> La Clé etrangère de la table district </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant du crabe échantillonné généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> destination </td>
   <td style="text-align:left;"> la destination de chaque crabe échantillonnés lors des mesures biométriques.(1= Collecte; 2= Marché Local; 3= Autoconsommation) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> le sexe de chaque crabe échantillonnés lors des mesures biométriques.(M= Male ; NO= Femelle Non Ovées; FO= Femelle Ovées; NR= Non Renseigné) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> La Clé etrangère de la table echantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> taille </td>
   <td style="text-align:left;"> La Taille de la largeur de céphalothorax (en mm ) mesurée avec un pied à coulisse d'un crabe de l’échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant de crabe à la fichi suivi usine(Société Collecte) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> la clé etrangère de la table lot à la tablecrabeSociété </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> taille </td>
   <td style="text-align:left;"> la taille de crabe à la fiche suivi usine(société de collecte) unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Le sexe de crabe à la fiche suivi usine(société de collecte) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant du District généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom du District où l'enquête a été menée. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> La Clé etrangère de la table région </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de l'Echantillon généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> trie </td>
   <td style="text-align:left;"> Indique si l'intégralité des crabes captures dans les jours renseignés sont présent ou si un tri a été réalisé en amont de l'enquête: </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> Le Poids de crabe en Kg de l’échantillon mesuré </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> taille_absente </td>
   <td style="text-align:left;"> le type de crabe écartés en amont de l'enquête (Gros, Petit, Autre). </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> taille_absente_autre </td>
   <td style="text-align:left;"> la précision sur type de crabe écartés en amont de l'enquête. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> La Clé etrangère de la table fiche enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de l'Engin généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le Nom de l'engin de pêche utilisé au cours de la ou des sorties de pêche concernées par l'enquête :(balance ; nasse ; ligne ; crochet ;..) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> min </td>
   <td style="text-align:left;"> le nombre minimum d'engin de pêche utilisé au cours de la ou des sorties de pêche concernées par l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> max </td>
   <td style="text-align:left;"> le nombre maximum d'engin de pêche utilisé au cours de la ou des sorties de pêche concernées par l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'identifiant de l'engin utilisé par le pêcheur renseigné au fiche de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> clé etrangère de la table enquete_recensement à la table engin_enquete_recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> clé etrangère de la table engin à la table engin_enquete_recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> année de debut du pêche avec engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de l’engin utilisé par le pêcheur renseigné par l'Acheteur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> La clé etrangère de la table engin à la table engin_fiche_pecheur (fiche pêcheur) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> La clé étrangère de la table fiche_pecheur à la table engin_fiche_pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Le nombre de l’engin utilisé lors de la sortie de pêche effectué par le pêcheur renseigné par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_recensement </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_recensement </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_fiche_recensement </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant engin sortie de pêcheur acheteur(Fiche Acheteur) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> La Clé étrangère de la table sortie_de_peche_acheteur à la table engin_sortie_de_peche_acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> La clé etrangère de la table engin à la table engin_sortie_de_peche_acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Le Nombre d'engin lors de la sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'Identifiant engin sortie de pêcheur enqueteur(Fiche Enqueteur) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> la Clé étrangère de la table sortie_de_peche_enqueteurà la table engin_sortie_de_peche_enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> La clé etrangère de la table engin à la table engin_sortie_de_peche_enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre d'engin lors de la sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'Identifiant de l'enquête recensement fiche N° 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> La clé etrangère de la table pecheur à la table enquete_recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> La clé etrangère de la table recensement à la table enquete_recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> Information si la Sortie de pêche avait été avec ou sans pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> toute_annee </td>
   <td style="text-align:left;"> Pêche de crabe toute l'année </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> type_periode </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> type_mare </td>
   <td style="text-align:left;"> Le Type de maré de la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> periode_mois </td>
   <td style="text-align:left;"> Le Mois périodique de la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> resident </td>
   <td style="text-align:left;"> L'Information si le Pêcheur est migrant ou résident </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> Le numero d'Identifiant de l'enquete recensement Fiche N° 6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> La clé etrangère de la table recensement_mensuel à la table enquete_recensement_mensuel(Fiche N° 6) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> La clé etrangère de la table pecheur à la table enquete_recensement_mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> L'Activité crabe ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> source </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel_prime </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le Numero d'identifiant de l'enquete recensement mensuel prime (Fiche N° 6 prime ) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel_prime </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> La clé etrangère de la table recensement_mensuel_prime à la table enquete_recensement_mensuel_prime </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel_prime </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> pecheur concerné l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel_prime </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> Activité crabe ou non (fiche N°6 prime) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de l'Enquêteur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> Le Type de personne qui mène l'enquête et renseigne la fiche d’enquête : Enquêteur ; Pêcheur ; Collecteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> code </td>
   <td style="text-align:left;"> Le code de l'enquêteur généré manuellement composé de trois chiffres </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom de la personne qui a réalisé l'Enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> le Login de l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la clé etrangère de la table village à la table enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant d'enqueteur à la structure enqueteur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> la clé etrangère de la table structure_enqueteur à la table enqueteur_structure_enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> la Clé etrangère de la table enqueteur à la table enqueteur_structure_enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la fiche généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> le type Fiche de suivi utilisée pour mener l'enquête :(Enquêteur; Acheteur; Pécheur) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> l'année quand la fiche a été renseigné par l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> le mois quand la fiche a été renseigné par l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> numero_ordre </td>
   <td style="text-align:left;"> le numéro d'identifiant d'ordre de la fiche générer manuellement par l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> la date d'expédition de la fiche par l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> le nom du village où la fichea été rensegnier. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> la clé etrangère de la table Enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la fiche Acheteur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la date de l'enquête effectuer par l'acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> pecheur_nombre </td>
   <td style="text-align:left;"> le nombre de pêcheur qui a effectué la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_poids1 </td>
   <td style="text-align:left;"> le premier poids en Kg de crabes destinés pour le collecteur au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_prix1 </td>
   <td style="text-align:left;"> le premier prix en Ar de crabes destinés pour le collecteur au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_poids2 </td>
   <td style="text-align:left;"> le deuxième poids en Kg de crabes destinés pour le collecteur au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_prix2 </td>
   <td style="text-align:left;"> le prix en Ar de la seconde partie des crabes destinés pour le collecteur au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes destinés pour le marché local au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> le prix en Ar de crabes destinés pour le marché local au niveau de l’Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> la clé etrangère de la table Fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> la clé etrangère de la table Pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> crabe_non_vendu_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes non vendu au niveau du Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> crabe_non_vendu_nombre </td>
   <td style="text-align:left;"> le nombre de crabes non vendu au niveau du Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> nombre_sortie_vente </td>
   <td style="text-align:left;"> le nombre de sortie correspondant de la vente des crabes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la fiche enquêteur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la date de l'enquête effectué par l'enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> participant_individu </td>
   <td style="text-align:left;"> la relation entre les participants et le pêcheur qui ont participer à la pêche avec le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> participant_nombre </td>
   <td style="text-align:left;"> le nombre des participants qui ont participer à la pêche avec le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> capture_poids </td>
   <td style="text-align:left;"> le poids total des crabes capturés en kg sur l'ensemble des sorties de pêches </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> crabe_consomme_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes consommées par le pêcheur renseigné par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> crabe_consomme_nombre </td>
   <td style="text-align:left;"> le nombre de crabes consommées par le pêcheur renseigné par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_poids1 </td>
   <td style="text-align:left;"> le premier poids en Kg de crabes destinés pour le collecteur par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_prix1 </td>
   <td style="text-align:left;"> le premier prix en Ar de crabes destinés pour le collecteur par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes destinés pour le marché local par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> le prix en Ar de crabes destinés pour le marché local par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> la clé etrangère de la table Fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> la clé etrangère de la table Pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_poids2 </td>
   <td style="text-align:left;"> le deuxième poids en Kg de crabes destinés pour le collecteur par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_prix2 </td>
   <td style="text-align:left;"> le deuxieme prix en Ar de crabes destinés pour le collecteur par l’enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> nombre_sortie_capture </td>
   <td style="text-align:left;"> le nombre de sortie effectue par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la fiche pêcheur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la date de l'enquête effectué par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> partenaire_peche_individu </td>
   <td style="text-align:left;"> le partenaire de la pêche du pêcheur qui ont effectué la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> partenaire_peche_nombre </td>
   <td style="text-align:left;"> le nombre de partenaire de la pêche du pêcheur qui ont effectué la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> consommation_crabe_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes consommé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> consommation_crabe_nombre </td>
   <td style="text-align:left;"> le nombre de crabes consommé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> collecte_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes destinés pour le collecteur au niveau du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> collecte_prix </td>
   <td style="text-align:left;"> le prix en Ar de crabes destinés pour le collecteur au niveau du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> le poids en Kg de crabes destinés pour le marché local au niveau du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> le prix en Ar de crabes destinés pour le marché local au niveau du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> avec_pirogue </td>
   <td style="text-align:left;"> Indique si le pecheur a utilisé une piorgue pour pêcher le jours du pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> la clé etrangère de la table Fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la fiche recensement du pêcheur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> la clé etrangère de la table </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> toute_annee </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> datedebut </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fiche_recensement </td>
   <td style="text-align:left;"> datefin </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant du Fokontany généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom du Fokontany où l'enquête a été menée. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> la clé etrangère de la table commune </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant de lot généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> la clé etrangère de la table cargaison à la table lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la clé etrangère de la table village à la table lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> poidstotal </td>
   <td style="text-align:left;"> le Poids total du lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> numfiche </td>
   <td style="text-align:left;"> le Numéro de fiche du lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant du pêcheur généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la clé etrangère de la table Village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom usuel de la personne qui a réalisé la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> le Sexe du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> datenais </td>
   <td style="text-align:left;"> Année de naissance du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> village_origine </td>
   <td style="text-align:left;"> le Village d'origine du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> village_activite </td>
   <td style="text-align:left;"> le village d'activité du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> engin_principal </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> engin_secondaire </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> nouveau </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant de la provenance de cargaison généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> la clé etrangère de la table cargaison à la table provenace </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la clé etrangère de la table village à la table provenace </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'identifiant de la fiche recensement (Fiche N°5) généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la clé etrangère de la table village à la table recensement(village d'enquête) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> la clé etrangère de la table enqueteur à la table recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la Date de la fiche recensement (Fiche N°5) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> numero_ordre </td>
   <td style="text-align:left;"> le Numéro d'ordre du fiche de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'identifiant de la fiche recensement mensuel (Fiche N°6) généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> la Village d'enquête du fiche N°6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> l'Année d'enquête du fiche N°6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> le Mois d'enquête du fiche N°6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la Date d'enquête du fiche N°6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> la clé etrangère de la table enqueteur à la table recensement_mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numero d'Identifiant de la fiche recensement mensuel (Fiche N°6 prime) généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> l' Année d'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> le Mois d'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la Date d'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> le Village d'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_mensuel_prime </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> l'Enqueteur qui a effectué les enquêtes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> idvillage </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> nombre_pecheur_total </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> recensement_total_actif </td>
   <td style="text-align:left;"> nombre_pecheur_actif </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la région généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom de la région où l'enquête a été menée. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> Identification de la zone CORECRABE correspondate à la zone CORECRABE de région </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la societe généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le Nom de la société (ex:) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> adresse </td>
   <td style="text-align:left;"> l' Adresse de la société </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> num </td>
   <td style="text-align:left;"> le Téléphone de la société </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> nompersonnecontact </td>
   <td style="text-align:left;"> le Nom de personne en contactde la société </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la sortie de pêche généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la date de la sortie de pêche renseigné par l'Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> le nombre de la sortie de pêche renseigné par l'Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> le nombre de la sortie de pêche effectué par le pêcheur utilisant une pirogue renseigné par l'Acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> Clé etrangère de la table fiche_acheteur  à la table sortie de pêche acheteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la sortie de pêche généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> la date de la sortie de pêche renseigné par l'Enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> le nombre de la sortie de pêche renseigné par l'Enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> le nombre de la sortie de pêche effectué par le pêcheur utilisant une pirogue renseigné par l'Enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> Clé etrangère de la table fiche_enqueteur  à la table sortie de pêche enquêteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la structure à laquelle l'enquêteur est rattaché généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> valeur </td>
   <td style="text-align:left;"> le nom de la Structure à laquelle l'enquêteur est rattaché (RENAFEP, WWF, BV, MAGNIRIKE, OCEA, IRD, COPEFRITO, SOGEDIPROMA,..,) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant du Village généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom du Village où l'enquête a été menée. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> la cle primaire du Fokontany du village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> latitude </td>
   <td style="text-align:left;"> la Latitude du village unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> longitude </td>
   <td style="text-align:left;"> le Longitude du village unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> le Sous-zone du village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> bassin_collecte </td>
   <td style="text-align:left;"> le Bassin de collecte du village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> id </td>
   <td style="text-align:left;"> le numéro d'identifiant de la zone CORECRABE généré automatiquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> le nom de la zone CORECRABE : (1= Ambanja – Ambilobe ; 2= Mahajanga ; 3= Morondava ; 4= Morombe ) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> lat </td>
   <td style="text-align:left;"> la Latitude de la zone CORECRABE unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> long </td>
   <td style="text-align:left;"> la Longitude de la zone CORECRABE unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> surface_mangrove </td>
   <td style="text-align:left;"> la Surface de mangrove de la zone CORECRABE unite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> surface_ndvi_0_6 </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> production_annuelle_mangrove </td>
   <td style="text-align:left;"> La production annuelle de mangrove de la zone CORECRABE unite </td>
  </tr>
</tbody>
</table>


# Reference SQL queries


Ici on liste les requêtes de référence pour la base :

- Vues classiques ou matérialisées stockées directement dans la base.  

- Autres requêtes stockées sur github ou dans des tutoriels [here](https://github.com/juldebar/MIKAROKA/tree/main/SQL/reference_sql_corecrabe.sql).

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data-dictionary-crabs.Rmd)
