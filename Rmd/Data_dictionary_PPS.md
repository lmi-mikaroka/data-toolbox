---
title: "data_dictionary_PPS"
author: "Herinomena Andriamasinoro, Julien Barde"
date: "2023-06-12"
output:
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1oksGI0S9_ChVks2hgATEhG_gMhTIjFBVejOXQPbXtfs/edit#gid=1747039678"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1oksGI0S9_ChVks2hgATEhG_gMhTIjFBVejOXQPbXtfs/edit?usp=sharing"
  #schema_db: "https://drive.google.com/uc?id=1vDXsrQA48pZq3r-93JtaZXTN0JIvoRwu"

    
---








# Introduction

This report describes the data dictionary for the
" small dried fish" data. The contents are taken from the following Google spreadsheets:

* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1oksGI0S9_ChVks2hgATEhG_gMhTIjFBVejOXQPbXtfs/edit#gid=1747039678)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1oksGI0S9_ChVks2hgATEhG_gMhTIjFBVejOXQPbXtfs/edit?usp=sharing)

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
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Informations concernants les vendeurs de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Informations concernants les lots de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Informations concernants les autres lots que PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Fiche de tri et d'observation de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Informations concernants les individus à barcoder </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Informations concernants la taille des individus étudiés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> Informations concernants la stade de vie de PPS en se référence aux données de fishbase </td>
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
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> N_fiche </td>
   <td style="text-align:left;"> Numéro attribué à un fiche de collecte des données </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Code_vendeur </td>
   <td style="text-align:left;"> C'est un code attribué à un vendeur (Donnees_vendeuses) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Code_ville </td>
   <td style="text-align:left;"> Code attribué pour désigner une ville étudiée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Code_marche </td>
   <td style="text-align:left;"> C'est un code attribué à un marché M1 à M16 (Liste_marche) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Statut </td>
   <td style="text-align:left;"> Classification d'un vendeur par rapport à leur fonction (Principale ou assistant) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Sexe </td>
   <td style="text-align:left;"> Sexe de vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Age </td>
   <td style="text-align:left;"> Age de vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ethnie </td>
   <td style="text-align:left;"> Groupe ethnique propre à un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Educ_max </td>
   <td style="text-align:left;"> Niveau d'éducation maximale atteint par le vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Résidence </td>
   <td style="text-align:left;"> Ville, rapporté au niveau district, où le vendeur habite (District de Toliara…) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Residence </td>
   <td style="text-align:left;"> Ville où le vendeur habite (Ex: Salary, Ankilibe, Sakaraha..;) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Resident </td>
   <td style="text-align:left;"> Oui : Résident ; Non : Non résident </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Autre_marche </td>
   <td style="text-align:left;"> Oui : Frequente autre marché ; Non : ne requente qu'un marché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Marche_frequente </td>
   <td style="text-align:left;"> Nombre de marché visité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Frequence </td>
   <td style="text-align:left;"> Nombre de jour où un vendeur effectue la vente de PPS dans une semaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Meme_ville </td>
   <td style="text-align:left;"> Oui : Frequente un autre marché dans la même ville ; Non : Ne frequente pas de marché dans la même ville </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Nom_marche </td>
   <td style="text-align:left;"> Nom de marché fréquenté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Autre_ville </td>
   <td style="text-align:left;"> Oui : Frequente un autre marché dans une autre ville ; Non : Ne frequente pas un autre marché dans une autre ville </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_1 </td>
   <td style="text-align:left;"> Ville N°1 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_2 </td>
   <td style="text-align:left;"> Ville N°2 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_3 </td>
   <td style="text-align:left;"> Ville N°3 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_4 </td>
   <td style="text-align:left;"> Ville N°4 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_5 </td>
   <td style="text-align:left;"> Ville N°5 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Ville_6 </td>
   <td style="text-align:left;"> Ville N°6 fréquenté par un vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> A_principale </td>
   <td style="text-align:left;"> Activité principale </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> Autres_activites </td>
   <td style="text-align:left;"> Oui : le vendeur possède une autre activité que la vente de PPS ; Non : le vendeur ne possède pas d'autre activité que la vente de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_vendeuses </td>
   <td style="text-align:left;"> A_activite </td>
   <td style="text-align:left;"> Autres activités </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Code_lot </td>
   <td style="text-align:left;"> Code attribué pour désigner un lot de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> Date d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Ville </td>
   <td style="text-align:left;"> Ville d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Code_ville </td>
   <td style="text-align:left;"> Code attribué pour désigner une ville étudiée </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Marche </td>
   <td style="text-align:left;"> Code attribué pour désigner le marché étudié </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Code_vendeur </td>
   <td style="text-align:left;"> Code attribué pour désigner un vendeur étudié </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Transformation </td>
   <td style="text-align:left;"> Mode de conservation de PPS (Séché, fumé ou salé) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Taille </td>
   <td style="text-align:left;"> Taille approximative attribuée à un lot de PPS (Petit : &lt;8 cm ; Moyenne : entre 8 à 30 cm ; Grand : &gt; 30 cm) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Variete </td>
   <td style="text-align:left;"> Nombre de variété connue par le vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Nb_variete_cor </td>
   <td style="text-align:left;"> Nombre de variété dans un lot corrigé (après le tri par morphoSP) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Nom_consensus </td>
   <td style="text-align:left;"> Nom consensus attribué attribué au lot de PPS par rapport à leur composition en morphoSP et par rapport au nom donné de vendeur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Nom_variete </td>
   <td style="text-align:left;"> Nom de variété (espèce) connue par le vendeur dans un lot de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Variete_P </td>
   <td style="text-align:left;"> Variété principale des poissons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Variete_D </td>
   <td style="text-align:left;"> Variété détaillées des poissons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Prix_Kp </td>
   <td style="text-align:left;"> Prix de PPS en Kapoaka </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Prix_Kg </td>
   <td style="text-align:left;"> Prix de PPS en Kilogramme </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Origine1 </td>
   <td style="text-align:left;"> Ville de provenance de PPS numéro 1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Origine2 </td>
   <td style="text-align:left;"> Ville de provenance de PPS numéro 2 (si deux lot de même variété ont été groupés dans un lot alors qu'ils viennent d'un endroit différent) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Intermediaire </td>
   <td style="text-align:left;"> Oui : l'achat de PPS a passé d'une intermédiaire ; Non : l'achat de PPS n'a pas passé d'une intermédiaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Intermediaire_nom </td>
   <td style="text-align:left;"> Nom de l'intermédiaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Intermediaire_ville </td>
   <td style="text-align:left;"> Ville où le l'intermédiaire habite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Alim_H </td>
   <td style="text-align:left;"> Alimentation humaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Alim_A </td>
   <td style="text-align:left;"> Alimentation animale </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Echantillonne </td>
   <td style="text-align:left;"> Oui : le lot est échantillonné ; Non : le lot n'est pas échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Code_echant </td>
   <td style="text-align:left;"> Code attribué pour un lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Client_part </td>
   <td style="text-align:left;"> Oui : le vendeur possède un client particulier ; Non : le vendeur ne possède pas un client particulier </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Nm_client </td>
   <td style="text-align:left;"> Nom du client particulier ou activité du client particulier </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Lot_apprecie </td>
   <td style="text-align:left;"> Oui : le lot de PPS est apprécié par un consommateur ; Non : le lot n'est pas apprécié par un consommateur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Cons_seul </td>
   <td style="text-align:left;"> Oui : le lot de PPS est consommé seul ; Non : le lot de PPS n'est pas consommé seul </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Riz </td>
   <td style="text-align:left;"> Le PPS est mangé avec le riz </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Manioc </td>
   <td style="text-align:left;"> Le PPS est mangé avec le manioc </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Mais </td>
   <td style="text-align:left;"> Le PPS est mangé avec le mais </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Patate_douce </td>
   <td style="text-align:left;"> Patate attribué pour désigner un lot tate PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Banane </td>
   <td style="text-align:left;"> Le PPS est mangé avec le banane </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Fruit_a_pain </td>
   <td style="text-align:left;"> Le PPS est mangé avec le fruit à pin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Sauce </td>
   <td style="text-align:left;"> Le PPS est mangé avec le sauce </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Brede </td>
   <td style="text-align:left;"> Le PPS est mangé avec le brede </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Frite </td>
   <td style="text-align:left;"> Le PPS est mangé avec le frite </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Soupe </td>
   <td style="text-align:left;"> Le PPS est mangé avec le soupe </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Beignet </td>
   <td style="text-align:left;"> Le PPS est mangé avec le beignet </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Poudre </td>
   <td style="text-align:left;"> Le PPS est mangé avec le poudre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Legume </td>
   <td style="text-align:left;"> Le PPS est mangé avec le legume </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_lots_PPS </td>
   <td style="text-align:left;"> Viande </td>
   <td style="text-align:left;"> Le PPS est mangé avec le viande </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Code_lot </td>
   <td style="text-align:left;"> Code attribué pour désigner un lot de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Code_echant </td>
   <td style="text-align:left;"> Code attribué pour un lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Ville </td>
   <td style="text-align:left;"> Ville d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Code_vendeur </td>
   <td style="text-align:left;"> Code attribué pour désigner un vendeur étudié </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Autres_lots </td>
   <td style="text-align:left;"> Oui : le vendeur possède un autre produit des PPS ; Non : le vendeur ne possède que de lot des PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> P_sales </td>
   <td style="text-align:left;"> Poissons salés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> P_fumes </td>
   <td style="text-align:left;"> Poissons fumés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> P_frites </td>
   <td style="text-align:left;"> Poissons frites </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Cr_sechees </td>
   <td style="text-align:left;"> Crevettes séchées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Ch_sechees </td>
   <td style="text-align:left;"> Chevaquines séchées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Dechets </td>
   <td style="text-align:left;"> Déchets de poissons </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Autres </td>
   <td style="text-align:left;"> Autres lots que le PPS (Poissons salés ou poissons fumés de moyenne/grande taille) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Donnees_Lots_autres </td>
   <td style="text-align:left;"> Commentaire </td>
   <td style="text-align:left;"> Remarque </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Code_echant </td>
   <td style="text-align:left;"> Code attribué pour un lot échantillonné </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Id_morpho </td>
   <td style="text-align:left;"> Identification d'une morpho-espèce dans un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Code_morpho </td>
   <td style="text-align:left;"> Code attribué à une morpho-espèce (Code attribué pour un lot échantillonné + Identification d'une morpho-espèce dans un lot) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Code_mE </td>
   <td style="text-align:left;"> Code attribué à une morpho-espèce après classification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> F_hypo </td>
   <td style="text-align:left;"> Famille hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> G_hypo </td>
   <td style="text-align:left;"> Genre hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> E_hypo </td>
   <td style="text-align:left;"> Espèce hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Reference </td>
   <td style="text-align:left;"> Reference de la classification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> N_vernaculaire </td>
   <td style="text-align:left;"> Nom vernaculaire d'une morpho_espèce </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Nbr_indE </td>
   <td style="text-align:left;"> Nombre d'individu de PPS en entier </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Poids_tiE </td>
   <td style="text-align:left;"> Poids total d'individu de PPS en entier (g) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Nbr_indC </td>
   <td style="text-align:left;"> Nombre d'individu de PPS cassé (queue) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Poids_tiC </td>
   <td style="text-align:left;"> Poids total d'individu de PPS cassé (queue) (g) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Date_tri </td>
   <td style="text-align:left;"> Date de triage du lot au laboratoire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fiche_Tri_Observation </td>
   <td style="text-align:left;"> Commentaires </td>
   <td style="text-align:left;"> Remarque </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Code_echant </td>
   <td style="text-align:left;"> Code attribué pour désigner un bar de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Id_morpho </td>
   <td style="text-align:left;"> Identification d'une morpho-espèce dans un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Code_morpho </td>
   <td style="text-align:left;"> Code attribué à une morpho-espèce (Code attribué pour un lot échantillonné + Identification d'une morpho-espèce dans un lot) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Id_ind </td>
   <td style="text-align:left;"> Numéro d'indentification d'un individu pour la barcode </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Code_mE </td>
   <td style="text-align:left;"> Code attribué à une morpho-espèce après classification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> F_hypo </td>
   <td style="text-align:left;"> Famille hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> G_hypo </td>
   <td style="text-align:left;"> Genre hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> E_hypo </td>
   <td style="text-align:left;"> Espèce hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Reference </td>
   <td style="text-align:left;"> Reference de la classification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Id_photo_lot </td>
   <td style="text-align:left;"> Indentification de la photo du groupe pour un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Id_photo_ind </td>
   <td style="text-align:left;"> Indentification de la photo d'un individu dans une morpho-espèce, dans un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Barcode </td>
   <td style="text-align:left;"> Code respectif attribué pour chaque individu dans une morpho-espèce dans un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Metabarcode </td>
   <td style="text-align:left;"> Code respectif attribué pour lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> D_tri </td>
   <td style="text-align:left;"> Date de tri du lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> D_conservation </td>
   <td style="text-align:left;"> Date de début de conservation d'un échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Id_Barcode </td>
   <td style="text-align:left;"> Commentaires </td>
   <td style="text-align:left;"> Remarque </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Code_echant </td>
   <td style="text-align:left;"> Code attribué pour désigner un pps de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Id_morpho </td>
   <td style="text-align:left;"> Identification d'une morpho-espèce dans un lot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Code_morpho </td>
   <td style="text-align:left;"> Code attribué pour désigner un pps de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Code_mE </td>
   <td style="text-align:left;"> Code attribué pour désigner un pps de PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> F_hypo </td>
   <td style="text-align:left;"> Famille hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> E_hypo </td>
   <td style="text-align:left;"> E attribué pour désigner un pps hypo PPS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Taille_PPS </td>
   <td style="text-align:left;"> Taille </td>
   <td style="text-align:left;"> Longueur standard d'un individu </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> F_hypo </td>
   <td style="text-align:left;"> Espèce hypothétique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> Taille_moyenne </td>
   <td style="text-align:left;"> Longueur standard moyenne par famille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> Lmin_mat (Rina) </td>
   <td style="text-align:left;"> Longueur minimale à la première maturité sexuelle par espèce selon Rina </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> Lmaturity_min </td>
   <td style="text-align:left;"> Longueur moyenne à la première maturité sexuelle, la plus petite, pour les espèces présentent dans une famille (dans la base de données de fishbase) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> nb_espèce </td>
   <td style="text-align:left;"> Nombre des espèces présentent dans une famille dans la base de données de fishbase </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lmaturity_fishbase </td>
   <td style="text-align:left;"> Stade </td>
   <td style="text-align:left;"> Stade de vie d'un poisson </td>
  </tr>
</tbody>
</table>

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data_dictionary_PPS.Rmd)
