---
title: "Data dictionary invertebre sarodrano"
author: "Herinomena Andriamasinoro, Julien bard"
date: "2023-09-27"
output:
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1OL6hwzyX0yYpy119oIEC2LeXBkbnnbd1fyROMBNFJYM/edit#gid=932678001"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1OL6hwzyX0yYpy119oIEC2LeXBkbnnbd1fyROMBNFJYM/edit?usp=sharing"
---








# Introduction

This report describes the data dictionary for the "sarodrano invertebrate" data. The contents are taken from the following Google spreadsheets:

* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1OL6hwzyX0yYpy119oIEC2LeXBkbnnbd1fyROMBNFJYM/edit#gid=932678001)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1OL6hwzyX0yYpy119oIEC2LeXBkbnnbd1fyROMBNFJYM/edit?usp=sharing)

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
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Décrire les habitats où les gens du village effectuent leur pêche quotidiennement. Les données collectées comprennent le recouvrement benthique du milieu </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Concerne suivi des captures journalières des pêcheurs à pied est effectué sur 2 ans </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Concerne des comptages des taxons dans des BELT de 50 m2 sur les trois sites fréquentés par les pêcheurs à pied </td>
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
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Image </td>
   <td style="text-align:left;"> Numéro de l'image </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Latitude </td>
   <td style="text-align:left;"> Latitude du photoquadrat </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Longitude </td>
   <td style="text-align:left;"> Longitude du photoquadrat </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Classe de recouvrement </td>
   <td style="text-align:left;"> Types des classes de recouvrement se trouvant dans l'image correspondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Pourcentage 1 </td>
   <td style="text-align:left;"> Pourcentage de la première classe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Pourcentage 2 </td>
   <td style="text-align:left;"> Pourcentage de la deuxième classe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Habitat-Sarodrano_2022 </td>
   <td style="text-align:left;"> Pourcentage 3 </td>
   <td style="text-align:left;"> Pourcentage de la Troisième classe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Date_de_sortie </td>
   <td style="text-align:left;"> Date de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Suivi_non suivi </td>
   <td style="text-align:left;"> Oui: si le pêcheur est sorti, non: si le pêcheur n'est pas sorti </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Nom-Village </td>
   <td style="text-align:left;"> Nom du village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Num-fiche </td>
   <td style="text-align:left;"> Numéro de la fiche de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Nom-_pêcheur </td>
   <td style="text-align:left;"> Nom du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Engin_Utilisé </td>
   <td style="text-align:left;"> Engin utilisé par le pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Code_engin </td>
   <td style="text-align:left;"> Code de l'engin utilisé par le pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Nombre_de_pêcheur </td>
   <td style="text-align:left;"> Nombre de pêcheur partageant le même fiche de suivi (même capture) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Jour_Nuit </td>
   <td style="text-align:left;"> Statut de sortie de pêche : jour ; nuit ; pas sortie . </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Site_de_pêche </td>
   <td style="text-align:left;"> Site de référence </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Site_primaire </td>
   <td style="text-align:left;"> Endroit identifié par le pêcheur où il a effectué sa pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Poisson </td>
   <td style="text-align:left;"> Poids de poisson dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Pyrasus_palustris </td>
   <td style="text-align:left;"> Poids de Pyrasus dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Tripneustes_gratilla </td>
   <td style="text-align:left;"> Poids des oursins dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_crabe_bon </td>
   <td style="text-align:left;"> Poids de crabe bon dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_crabe_mauvais </td>
   <td style="text-align:left;"> Poids de crabe mauvais dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_crevette </td>
   <td style="text-align:left;"> Poids des crevettes dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_calamar </td>
   <td style="text-align:left;"> Poids de calamar dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_poulpe </td>
   <td style="text-align:left;"> Poids des poulpes dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_holothurie </td>
   <td style="text-align:left;"> Poids des holothuries dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Anadara </td>
   <td style="text-align:left;"> Poids des anadara dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Isgnomon_ephippium </td>
   <td style="text-align:left;"> Poids de huitres dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Charonia_Tritonis </td>
   <td style="text-align:left;"> Poids des charonia dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Pinctada_margaritifera </td>
   <td style="text-align:left;"> Poids des pinctanda dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Tridacna </td>
   <td style="text-align:left;"> Poids des tridacna dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Poids_Murex_ramosus </td>
   <td style="text-align:left;"> Poids des Murex dans les captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Autres </td>
   <td style="text-align:left;"> Poids des autres taxons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Suivi_Participatif_Sarodrano-2022 </td>
   <td style="text-align:left;"> Prix </td>
   <td style="text-align:left;"> Prix Obtenu par les pêcheurs après la vente des produits </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> Date de l'échantillonage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Heure </td>
   <td style="text-align:left;"> Heure exacte de comptage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Niveau d'eau </td>
   <td style="text-align:left;"> Hauteur de l'eau au moment de l'echantillonage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Coordonées GPS </td>
   <td style="text-align:left;"> Coordonnées latitude et lingitude des transects effectués </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Site </td>
   <td style="text-align:left;"> Site de référence pour les échantillonages </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Quadrat </td>
   <td style="text-align:left;"> Belt de 50 m2 dans la quelle on compte les taxons existants à l'intérieur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Famille </td>
   <td style="text-align:left;"> Nom de famille des taxons (après identification) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Genre/espèce </td>
   <td style="text-align:left;"> Nom de genre et d'espèces des taxons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Nombre </td>
   <td style="text-align:left;"> Nombre d'individus </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Taille </td>
   <td style="text-align:left;"> Taille de chaque individu </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Habitat </td>
   <td style="text-align:left;"> description des caractéristiques de chaque quadrat, type d'habitat, taux de recouvrement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Echantillonage_Sarodrano-2022 </td>
   <td style="text-align:left;"> Type_de _substrat </td>
   <td style="text-align:left;"> Caractéristique du substrat de chaque quadrat </td>
  </tr>
</tbody>
</table>

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data_dictionary_invertebre_sarodrano.Rmd)
