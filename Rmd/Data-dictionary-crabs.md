---
title: "Data dictionary Crabs"
author: "Barde Julien ,Herinomena Andriamasinoro"
date: "2023-05-03"
output: 
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_schemas: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1350070480"
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=896284500"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1700967195"
  crabs_schema_db: "https://drive.google.com/uc?id=1BHg7LEUJgpWA-9-plQYkgq6Fx4OtkepM"
---









# Introduction

This report describes the data dictionary of the "Corecrabe" database. The content is taken from the following google spreadsheets :  

* [List of colums for all schemas](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1350070480)
* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=896284500)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1nXZODXDUsbX2Ht3w-W0DHHn6ZPRKkhmylreIkU_TnI0/edit#gid=1700967195)

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
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> id_activite </td>
   <td style="text-align:left;"> Identifiant unique pour chaque activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> nom_activite </td>
   <td style="text-align:left;"> Appellation de chaque activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> id_activite_enquete_recensement </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'activité à une enquête de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> Activité associé à une enquête de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_enquete_recensement </td>
   <td style="text-align:left;"> pourcentage </td>
   <td style="text-align:left;"> Valeur en pourcentage de l'activité associée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> id_activite_recensement_mensuel </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'activité à une enquête de recensement mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> activite </td>
   <td style="text-align:left;"> Activité associé à une enquête de recensement mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> activite_recensement_mensuel </td>
   <td style="text-align:left;"> pourcentage </td>
   <td style="text-align:left;"> Valeur en pourcentage de l'activité associée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> id_autorisation </td>
   <td style="text-align:left;"> Identifiant unique pour une autorisation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> groupe </td>
   <td style="text-align:left;"> Groupe associé à l'autorisation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> Opération à autoriser </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> creation </td>
   <td style="text-align:left;"> Autorisation à la création </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> modification </td>
   <td style="text-align:left;"> Autorisation à la modification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> visualisation </td>
   <td style="text-align:left;"> Autorisation pour la visualisation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> autorisation </td>
   <td style="text-align:left;"> suppression </td>
   <td style="text-align:left;"> Autorisation pour la suppression </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> id_bac </td>
   <td style="text-align:left;"> Identifiant unique pour chaque bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> Lot associé au bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> Type de bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> bac </td>
   <td style="text-align:left;"> poidsbac </td>
   <td style="text-align:left;"> Poids pour un bac </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> id_cargaison </td>
   <td style="text-align:left;"> Identifiant unique pour chaque cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> datedebarquement </td>
   <td style="text-align:left;"> Date de débarquement de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> poidstotalcargaison </td>
   <td style="text-align:left;"> Poids total de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> dateexpedition </td>
   <td style="text-align:left;"> Date d'expédition de la fiche pour saisie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> transport </td>
   <td style="text-align:left;"> Type de transport de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone d'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> Enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> Société enquetée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> trie </td>
   <td style="text-align:left;"> Echantilloné avant ou après triage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> id_commune </td>
   <td style="text-align:left;"> Identifiant unique pour chaque commune </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> nom_commune </td>
   <td style="text-align:left;"> Appellation de chaque commune </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District auquel la commune est rataché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> id_crabe </td>
   <td style="text-align:left;"> Identifiant unique pour chaque crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> destination </td>
   <td style="text-align:left;"> Destination du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Sexe du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> Echantillon auquel appartient le crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> taille </td>
   <td style="text-align:left;"> Taille du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> id_crabeSociete </td>
   <td style="text-align:left;"> Identifiant unique pour chaque crabe du suivi Société </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> taile </td>
   <td style="text-align:left;"> Taille du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Sexe du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> crabeSociete </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> Lot auquel a été échantillonné le crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> id_district </td>
   <td style="text-align:left;"> Identifiant unique pour chaque district </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> nom_district </td>
   <td style="text-align:left;"> Appelation de chaque district </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région à laquelle est rattaché le district </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> id_echantillon </td>
   <td style="text-align:left;"> Identifiant unique pour chaque echatillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> trie </td>
   <td style="text-align:left;"> échatillon trié ou pas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> poids </td>
   <td style="text-align:left;"> Poids de l'échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> taille_absente </td>
   <td style="text-align:left;"> Les tailles absentes de l'échantillon (si trié) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> taille_absente_autre </td>
   <td style="text-align:left;"> Précision sur les tailles absentes (si autre dans taille_absente) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> echantillon </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> Fiche_enqueteur rattaché à l'échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> id_engin </td>
   <td style="text-align:left;"> Identifiant unique pour chaque engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> nom_engin </td>
   <td style="text-align:left;"> Appellation de chaque engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> min </td>
   <td style="text-align:left;"> Nombre minimum de l'engin utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> max </td>
   <td style="text-align:left;"> Nombre maximum de l'engin utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> id_engin_enquete_recensement </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'engin et d'une enquete de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> Enquete à la quelle est associé l'engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin associé à l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_enquete_recensement </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> Annee de début d'utilisation de l'engin par le pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> id_engin_fiche_pecheur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'engin à une fiche pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin associé à l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> l'enquête à laquelle est rattaché l'engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_fiche_pecheur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre d'engin utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> id_engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'engin et de sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> Sortie de pêche correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin correspondant à la sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre d'engin utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> id_engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'engin et de sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> Sortie de pêche correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin correspondant à la sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> engin_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre d'engin utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> id_enquete_recensement </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquete de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Pecheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> Fiche recensement correspondante à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> Utilisation de pirogue par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> toute_annee </td>
   <td style="text-align:left;"> Pêcheur permanent? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> type_mare </td>
   <td style="text-align:left;"> Peche en mortes eaux ou en vives eaux </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> periode_mois </td>
   <td style="text-align:left;"> Periode en mois de pêche du pêcheur (si toute_annee = 0) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement </td>
   <td style="text-align:left;"> resident </td>
   <td style="text-align:left;"> Pecheur résident ou non résident </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> id_enquete_recensement_mensuel </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquete de recensement mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> Fiche correspondante à l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Pêcheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enquete_recensement_mensuel </td>
   <td style="text-align:left;"> crabe </td>
   <td style="text-align:left;"> Pêcheur de crabe ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> id_enqueteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> Groupe auquel appartient l'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> code </td>
   <td style="text-align:left;"> Code unique pour chaque enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> Appellation de chaque enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> Identifiant correspondant à l'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village auquel est rattaché l'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> id_enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque association d'enqueteur à sa structure </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> Structure correspondant à l'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_structure_enqueteur </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> Enqueteur appartenant à la structure </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> id_fiche </td>
   <td style="text-align:left;"> Identifiant unique pour chaque fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> type </td>
   <td style="text-align:left;"> Type de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> Annee de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> Mois de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> numero_ordre </td>
   <td style="text-align:left;"> Numero de fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> Date d'expedition de la fiche venant du terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> Enqueteur chargé de l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> id_fiche_acheteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque Enquete volontaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> pecheur_nombre </td>
   <td style="text-align:left;"> Nombre de pêcheur ayant pêché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_poids1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_prix1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_poids2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> collecte_prix2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> Fiche à laquelle appartient l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Pecheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> crabe_non_vendu_poids </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> crabe_non_vendu_nombre </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> nombre_sortie_vente </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> id_fiche_enqueteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquête villageoise </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> participant_individu </td>
   <td style="text-align:left;"> Statut de l'individu accompagnant le pêcheur (participant) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> participant_nombre </td>
   <td style="text-align:left;"> Nombre d'individu accompagnant le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> capture_poids </td>
   <td style="text-align:left;"> Poids total de la capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> crabe_consomme_poids </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> crabe_consomme_nombre </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_poids1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_prix1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> Fiche correspondante à l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Pecheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_poids2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> collecte_prix2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> nombre_sortie_capture </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> id_fiche_pecheur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquête de suivi pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> partenaire_peche_individu </td>
   <td style="text-align:left;"> Statut de l'individu accompagnant le pêcheur (participant) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> partenaire_peche_nombre </td>
   <td style="text-align:left;"> Nombre d'individu accompagnant le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> consommation_crabe_poids </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> consommation_crabe_nombre </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> collecte_poids </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> collecte_prix </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> marche_local_poids </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> marche_local_prix </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> avec_pirogue </td>
   <td style="text-align:left;"> Pecheur pechant avec pirogue? </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> fiche </td>
   <td style="text-align:left;"> Fiche à laquelle appartient l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> id_fokontany </td>
   <td style="text-align:left;"> Identifiant unique pour chaque fokontany </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> nom_fokontany </td>
   <td style="text-align:left;"> Appellation de chaque fokontany </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune à laquelle est rattachée le fokontany </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> groupe </td>
   <td style="text-align:left;"> id_groupe </td>
   <td style="text-align:left;"> Identifiant unique de chaque groupe d'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> groupe </td>
   <td style="text-align:left;"> nom_groupe </td>
   <td style="text-align:left;"> Appellation de chaque groupe d'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> id_historique </td>
   <td style="text-align:left;"> Identifiant unique de chaque ligne d'historique d'utilisation de l'interface web </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> Login de l'utilisateur éxécutant la tâche entrée dans l'historique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> action </td>
   <td style="text-align:left;"> Action éxéxutée par l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date et heure à laquelle la tâche a été éxécutée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> historique </td>
   <td style="text-align:left;"> detail </td>
   <td style="text-align:left;"> Détails sur l'action </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> id_login </td>
   <td style="text-align:left;"> Identifiant unique pour chaque login </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> identifiant </td>
   <td style="text-align:left;"> Pseudo ou adresse email servant d'identifiant pour chaque utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> mot_de_passe </td>
   <td style="text-align:left;"> Mot de passe utilisateur (accès à l'interface de saisie et app mobile) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> nom_utilisateur </td>
   <td style="text-align:left;"> Nom et/ou prénom de l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login </td>
   <td style="text-align:left;"> groupe </td>
   <td style="text-align:left;"> Groupe auquel appartient l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> id_login_shiny </td>
   <td style="text-align:left;"> Identifiant unique de chaque ligne d'historique d'utilisation de l'interface web </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> user </td>
   <td style="text-align:left;"> Pseudo ou adresse email servant d'identifiant pour chaque utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> password </td>
   <td style="text-align:left;"> Mot de passe utilisateur (accès à l'interface RShiny) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> Nom et/ou prénom de l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> email </td>
   <td style="text-align:left;"> Adresse email de l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> tel </td>
   <td style="text-align:left;"> Numéro téléphone de l'utilisateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> login_shiny </td>
   <td style="text-align:left;"> organisation </td>
   <td style="text-align:left;"> Organisation à laquelle l'utilisateur appartient </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> id_lot </td>
   <td style="text-align:left;"> Identifiant unique de chaque lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> Cargaison à laquelle appartient le lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village de provenance du lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> poidstotal </td>
   <td style="text-align:left;"> Poids total du lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> lot </td>
   <td style="text-align:left;"> numfiche </td>
   <td style="text-align:left;"> Numéro de fiche suivi usine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> id_operation </td>
   <td style="text-align:left;"> Identifiant unique pour chaque opération de l'interface de saisie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> nom_operation </td>
   <td style="text-align:left;"> Appellation de l'opération </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> creation </td>
   <td style="text-align:left;"> Possibilité de création </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> modification </td>
   <td style="text-align:left;"> Possibilité de modification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> visualisation </td>
   <td style="text-align:left;"> Possibilité de visualisation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> operation </td>
   <td style="text-align:left;"> suppression </td>
   <td style="text-align:left;"> Possibilité de suppression </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> organisation </td>
   <td style="text-align:left;"> id_organisation </td>
   <td style="text-align:left;"> Identifiant unique pour chaque organisation auquel appartient un utilisateur Rshiny </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> organisation </td>
   <td style="text-align:left;"> nom_organisation </td>
   <td style="text-align:left;"> Appellation de chaque organisation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> id_pecheur </td>
   <td style="text-align:left;"> Identifiant unique de chaque pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village d'activité du pecheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> nom_pecheur </td>
   <td style="text-align:left;"> Nom et/ou prénom du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Pecheur Homme ou Femme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> datenais </td>
   <td style="text-align:left;"> Année de naissance du pecheur pour calculer automatiquement son âge </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> village_origine </td>
   <td style="text-align:left;"> Village d'origine du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> id_provenance </td>
   <td style="text-align:left;"> Identifiant unique de chaque village de provenance d'une cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> cargaison </td>
   <td style="text-align:left;"> Cargaison correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> provenance </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village de provenance de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> id_recensement </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquête de recensement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> Enqueteur menant l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de l'enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement </td>
   <td style="text-align:left;"> numero_ordre </td>
   <td style="text-align:left;"> Numero de fiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> id_recensement_mensuel </td>
   <td style="text-align:left;"> Identifiant unique pour chaque enquête de recensement mensuel </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> Annee correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> Mois de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_mensuel </td>
   <td style="text-align:left;"> enqueteur </td>
   <td style="text-align:left;"> Enqueteur menant l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> id_region </td>
   <td style="text-align:left;"> Identifiant unique pour chaque region </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> nom_region </td>
   <td style="text-align:left;"> Appellation de chaque region </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> Zone corecrabe correspondante à la région </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> id_societe </td>
   <td style="text-align:left;"> Identifiant unique pour chaque societe de collecte </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> nom_societe </td>
   <td style="text-align:left;"> Appellation de chaque societe de collecte </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> adresse </td>
   <td style="text-align:left;"> Adresse de chaque société de collecet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> num </td>
   <td style="text-align:left;"> Numéro de téléphone joignable pour joindre chaque société de collecte </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> societe </td>
   <td style="text-align:left;"> nompersonnecontact </td>
   <td style="text-align:left;"> Identité de la personne de contact dans chaque société de collecte </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> id_sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_acheteur </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> Enquete correspondant à la sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> id_sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> date </td>
   <td style="text-align:left;"> Date de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> nombre </td>
   <td style="text-align:left;"> Nombre de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> pirogue </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> sortie_de_peche_enqueteur </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> Enquete correspondant à la sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> id_structure_enqueteur </td>
   <td style="text-align:left;"> Idetifiant unique pour chaque structure d'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> structure_enqueteur </td>
   <td style="text-align:left;"> valeur </td>
   <td style="text-align:left;"> Nom de la structure d'enqueteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> id_village </td>
   <td style="text-align:left;"> Identifiant unique pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> nom_village </td>
   <td style="text-align:left;"> Appellation de chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant au village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> latitude </td>
   <td style="text-align:left;"> Coordonnées géographiques du point village (latitude) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> longitude </td>
   <td style="text-align:left;"> Coordonnées géographiques du point village (longitude) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant au village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> bassin_collecte </td>
   <td style="text-align:left;"> Bassin de collecte correspondant au village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> the_geom </td>
   <td style="text-align:left;"> Objet geométrique correspondant à l'emplacement dans l'espace </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> id_zone_corecrabe </td>
   <td style="text-align:left;"> Identifiant unique pour chaque zone de suivi corecrabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> nom_zone_corecrabe </td>
   <td style="text-align:left;"> Appellation de chaque zone de suivi corecrabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> surface_mangrove </td>
   <td style="text-align:left;"> Surface de mangrove correspondant à la zone </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> surface_ndvi_0_6 </td>
   <td style="text-align:left;"> Surface ndvi 0,6 correspondant à la zone </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> zone_corecrabe </td>
   <td style="text-align:left;"> production_annuelle_mangrove </td>
   <td style="text-align:left;"> Production annuelle de mangrove correspondante à la zone </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> id_enquete </td>
   <td style="text-align:left;"> Identifiant unique de chaque enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> Date de'expedition de la fiche terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_participant </td>
   <td style="text-align:left;"> Nombre de participant à la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> poids_crabe_capture </td>
   <td style="text-align:left;"> Poids de crabe correspondant à la capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> poids_de_crabes_consommes </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nomre_de_crabes_consommes </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_collecte_1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_collecte_1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_collecte_2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_collecte_2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_mache_local </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_marche_local </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_sortie </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> date_premiere_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la première sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> date_deuxieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la deuxième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> date_troisieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la troisième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> date_quatrieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la quatrième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> acheteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> idzone </td>
   <td style="text-align:left;"> Identifiant unique pour chaque zone de suivi corecrabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> lat </td>
   <td style="text-align:left;"> latitude du village correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> lng </td>
   <td style="text-align:left;"> Longitude du village correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> idvillage </td>
   <td style="text-align:left;"> Identifiant unique pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> fiches </td>
   <td style="text-align:left;"> Nombre de fiches enregistré pour le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> fiche_enqueteur </td>
   <td style="text-align:left;"> Nombre de fiches enqueteurs enregistrés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> suivi_enqueteur </td>
   <td style="text-align:left;"> Présence de suivi enqueteur dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> fiche_pecheur </td>
   <td style="text-align:left;"> Nombre de fiches pecheurs enregistrés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> suivi_pecheur </td>
   <td style="text-align:left;"> Présence de suivi pecheurs dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> fiche_acheteur </td>
   <td style="text-align:left;"> Nombre de fiches acheteurs enregistrés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> suivi_acheteur </td>
   <td style="text-align:left;"> Présence de suivi acheteurs dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> pecheur </td>
   <td style="text-align:left;"> Nombre de pêcheur exerçant dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> coordonnees </td>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> Village suivi ou pas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> id_enquete </td>
   <td style="text-align:left;"> Identifiant unique de chaque enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> Date de'expedition de la fiche terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_participant </td>
   <td style="text-align:left;"> Nombre de participant à la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_crabe_capture </td>
   <td style="text-align:left;"> Poids de crabe correspondant à la capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_de_crabes_consommes </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nomre_de_crabes_consommes </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_destination_collecte_1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> prix_destination_collecte_1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_destination_collecte_2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> prix_destination_collecte_2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_destination_mache_local </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> prix_destination_marche_local </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_de_sortie </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> date_premiere_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la première sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> date_deuxieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la deuxième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> date_troisieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la troisième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> date_quatrieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la quatrième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> echantillon_trie_ou_pas </td>
   <td style="text-align:left;"> Echantillon trié ou pas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> les_tailles_absentes </td>
   <td style="text-align:left;"> Tailles absentes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> poids_total_de_l_echantillon </td>
   <td style="text-align:left;"> Poids total de l'échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> destination_de_crabe </td>
   <td style="text-align:left;"> Destination du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> sexe_du_crabe </td>
   <td style="text-align:left;"> Sexe du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_avec_taille </td>
   <td style="text-align:left;"> taille_de_crabe </td>
   <td style="text-align:left;"> Taille du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> id_enquete </td>
   <td style="text-align:left;"> Identifiant unique de chaque enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> Date de'expedition de la fiche terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_participant </td>
   <td style="text-align:left;"> Nombre de participant à la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> poids_crabe_capture </td>
   <td style="text-align:left;"> Poids de crabe correspondant à la capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> poids_de_crabes_consommes </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nomre_de_crabes_consommes </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> poids_destination_collecte_1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> prix_destination_collecte_1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> poids_destination_collecte_2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> prix_destination_collecte_2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> poids_destination_mache_local </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> prix_destination_marche_local </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_de_sortie </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> date_premiere_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la première sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> date_deuxieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la deuxième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> date_troisieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la troisième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> date_quatrieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la quatrième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> corecrabe_sans_taille </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> datedebarquement </td>
   <td style="text-align:left;"> Date de débarquement de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> transport </td>
   <td style="text-align:left;"> Type de transport de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> trie </td>
   <td style="text-align:left;"> Avant ou après triage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> poidstotalcargaison </td>
   <td style="text-align:left;"> Poids total de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> villages_de_provenance_de_la_cargaison </td>
   <td style="text-align:left;"> Villages de provenance de la cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> type_de_cargaison </td>
   <td style="text-align:left;"> Type de cargaison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> provenance_du_lot_echantillonne </td>
   <td style="text-align:left;"> Proenance du lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> poids_du_lot_echantillonne </td>
   <td style="text-align:left;"> Poids du lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> taille </td>
   <td style="text-align:left;"> Taille du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> donnees_usine </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Sexe du crabe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> id_enquete </td>
   <td style="text-align:left;"> Identifiant unique de chaque enquete </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> region </td>
   <td style="text-align:left;"> Région correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> district </td>
   <td style="text-align:left;"> District correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> commune </td>
   <td style="text-align:left;"> Commune correspondante </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> fokontany </td>
   <td style="text-align:left;"> Fokontany correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> date_expedition </td>
   <td style="text-align:left;"> Date de'expedition de la fiche terrain </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_participant </td>
   <td style="text-align:left;"> Nombre de participant à la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> poids_crabe_capture </td>
   <td style="text-align:left;"> Poids de crabe correspondant à la capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> poids_de_crabes_consommes </td>
   <td style="text-align:left;"> Poids de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nomre_de_crabes_consommes </td>
   <td style="text-align:left;"> Nombre de crabe non vendu (auto-consommé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_collecte_1 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_collecte_1 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (1) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_collecte_2 </td>
   <td style="text-align:left;"> Poids de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_collecte_2 </td>
   <td style="text-align:left;"> Prix par kilos de crabe vendu au collecteur (2) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> poids_destination_mache_local </td>
   <td style="text-align:left;"> Poids de crabe vendu au marche local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> prix_destination_marche_local </td>
   <td style="text-align:left;"> Prix de crabe vendu au marché local </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_sortie </td>
   <td style="text-align:left;"> Nombre de sortie correspondant à la capture renseigné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> date_premiere_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la première sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_1 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> date_deuxieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la deuxième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_2 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> date_troisieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la troisième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_3 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> date_quatrieme_sortie_de_peche </td>
   <td style="text-align:left;"> Date de la quatrième sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie de peche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_de_pirogue_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre de sortie avec pirogue </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> premier_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin pricipal utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_premier_engin_sotie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin principal utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Engin secondaire utilisé lors de la sortie de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> enqueteur_sous_zone </td>
   <td style="text-align:left;"> nombre_deuxieme_engin_sortie_de_peche_4 </td>
   <td style="text-align:left;"> Nombre d'engin secondaire utilisé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> Village suivi ou pas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> Nom du pêcheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Pêcheur Homme ou Femme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> datenais </td>
   <td style="text-align:left;"> Année de naissance du pecheur pour calculer automatiquement son âge </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> id_pecheur </td>
   <td style="text-align:left;"> Identifiant unique pour chaque pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> fiche_de_presence_tous_pecheurs </td>
   <td style="text-align:left;"> janvier_2021 à décembre_2022 </td>
   <td style="text-align:left;"> Présence correspondante pour chaque période allant de janvier_2021 à décembre_2022 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin de pêche correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> Année de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> Mois de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> mois_standard </td>
   <td style="text-align:left;"> Mois de suivi sous format mm/aaaa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> mois_literal </td>
   <td style="text-align:left;"> Mois lde suivi sous format M_aaaa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> pecheur_total </td>
   <td style="text-align:left;"> Nombre de pêcheur utilisant chaque engin total pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> pecheur_actif </td>
   <td style="text-align:left;"> Nombre de pêcheur utilisant chaque engin actif au mois de suivi pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> coefficient </td>
   <td style="text-align:left;"> Coefficient d'activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> coeff_moyenne </td>
   <td style="text-align:left;"> Coefficient d'activité moyenne de la zone pour les villages non suivis </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_avec_coeff </td>
   <td style="text-align:left;"> coeff_considere </td>
   <td style="text-align:left;"> Coefficient considéré pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> zone </td>
   <td style="text-align:left;"> Zone corecrabe correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> sous_zone </td>
   <td style="text-align:left;"> Sous_zone correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village correspondant à l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> suivi </td>
   <td style="text-align:left;"> Village suivi ou pas </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> Engin de pêche correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> mois </td>
   <td style="text-align:left;"> Mois de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> Année de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> pecheur_total </td>
   <td style="text-align:left;"> Nombre de pêcheur utilisant chaque engin total pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> pecheur_actif </td>
   <td style="text-align:left;"> Nombre de pêcheur utilisant chaque engin actif au mois de suivi pour chaque village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Public </td>
   <td style="text-align:left;"> recensement_pecheur_total_actif </td>
   <td style="text-align:left;"> coefficient </td>
   <td style="text-align:left;"> Coefficient d'activité </td>
  </tr>
</tbody>
</table>


# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data-dictionary-crabs.Rmd)
