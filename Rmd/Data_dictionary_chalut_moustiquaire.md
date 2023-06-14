---
title: "data dictionary chalut moustiquaire "
author: "Herinomena Andriamasinoro, Julien Barde"
date: "2023-06-14"
output:
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1XRVcsoY7tCj-8XCBc1WVvcoe0Fa3F1J0iHi6e9IWFYY/edit#gid=1424990871"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1XRVcsoY7tCj-8XCBc1WVvcoe0Fa3F1J0iHi6e9IWFYY/edit?usp=sharing"
  #schema_db: "https://drive.google.com/uc?id=1vDXsrQA48pZq3r-93JtaZXTN0JIvoRwu"

    
---








# Introduction

This report describes the data dictionary for the
" small dried fish" data. The contents are taken from the following Google spreadsheets:

* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1XRVcsoY7tCj-8XCBc1WVvcoe0Fa3F1J0iHi6e9IWFYY/edit#gid=1424990871)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1XRVcsoY7tCj-8XCBc1WVvcoe0Fa3F1J0iHi6e9IWFYY/edit?usp=sharing)

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
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Motivation_pecheurs </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activite_secondaire </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Femme_des_pecheurs </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enfants_pecheurs </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> NA </td>
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
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> village </td>
   <td style="text-align:left;"> Village où vit le pêcheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> nom </td>
   <td style="text-align:left;"> nom du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> code_pecheur </td>
   <td style="text-align:left;"> code attribué aux pêcheur suivant leur engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> engin </td>
   <td style="text-align:left;"> engin de pêche utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> age </td>
   <td style="text-align:left;"> Age du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> sexe </td>
   <td style="text-align:left;"> Genre du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> ethnie </td>
   <td style="text-align:left;"> ethnie du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> appartenance_a_une_association </td>
   <td style="text-align:left;"> si le pêcheur appartient à une association des pêcheurs quelconque </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> nombre_personne_vivant_dans_le_menage </td>
   <td style="text-align:left;"> nombre de personne qui vit dans le foyer du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> statut_d_immigration </td>
   <td style="text-align:left;"> si le pêcheur est natif du village ou un migrant (arrivé depuis quelques années) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> annee </td>
   <td style="text-align:left;"> année depuis quand le pêcheur vit dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> village_d_origine </td>
   <td style="text-align:left;"> village d'où vient le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> raison_du_venu </td>
   <td style="text-align:left;"> la raison pour laquelle le pêcheur a migré dans le village </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_pecheur </td>
   <td style="text-align:left;"> ancienne_activite </td>
   <td style="text-align:left;"> l'ancienne activité du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Motivation_pecheurs </td>
   <td style="text-align:left;"> motivations_personelles </td>
   <td style="text-align:left;"> Raison pour laquelle le pêcheur pratique le chalut à moustiquaire ou la senne de plage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Motivation_pecheurs </td>
   <td style="text-align:left;"> motivation_de_peche </td>
   <td style="text-align:left;"> Raison pour laquelle le pêcheur part en pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> rentabilite </td>
   <td style="text-align:left;"> Perception de la rentabilité de la pratique par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> rentabilite_saison_chaude_novembre_avril </td>
   <td style="text-align:left;"> Si le type de pêche pratique par l'enquêté est rentable pedant la saison chaude </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> rentabilite_saison_fraiche_mai_octobre </td>
   <td style="text-align:left;"> Si le type de pêche pratique par l'enquêté est rentable pedant la saison fraiche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> annee_de_pratique </td>
   <td style="text-align:left;"> Année depuis quand le pêcheur pratique la senne de plage ou le chalut à moustiquaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> utilisation_seulement_chalut </td>
   <td style="text-align:left;"> Si le pêcheur utilisé d'autre engin de pêche a part le chalut à moustiquaire ou la senne de plage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> autre_engin_utilise </td>
   <td style="text-align:left;"> Autre engin utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> utilisation_engin </td>
   <td style="text-align:left;"> Si le pêcheur utilise ensemble ou separement les autres engins avec du chalut à moustiquaire ou la senne de plage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> peche_avec_autre_engin </td>
   <td style="text-align:left;"> Moment quand le pêcheur utilise les autres engins </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> utilisation_chalut </td>
   <td style="text-align:left;"> Si le pêcheur utilise le chalut à moustiquaire et la senne de plage de manière saisonière ou toute l'année </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> dependance_aux_maree </td>
   <td style="text-align:left;"> Si le pêcheur utilise le chalut à moustiquaire et la senne de plage depend de la marée pour la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> maree_de_peche </td>
   <td style="text-align:left;"> Le pêcheur qui depend de la marée pêche pendant le vive ou morte eau </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> moment_de_peche </td>
   <td style="text-align:left;"> Si le pêcheur pratique la pêche diurne ou nocture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> nombre_de_chalut_en_possession </td>
   <td style="text-align:left;"> nombre de chalut ou senne en possession du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> zone_de_peche </td>
   <td style="text-align:left;"> zone où le pêcheur part pour pêcher </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> utilisation_pirogue </td>
   <td style="text-align:left;"> si le pêcheur utillise de la pirogue ou pas pour la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> nombre_de_pirogue </td>
   <td style="text-align:left;"> nombre de pirogue utilisé pendant la pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> nombre_de_pecheur_a_bord </td>
   <td style="text-align:left;"> nombre de pêcheur qui part en pêche ensembre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> issu_du_foyer </td>
   <td style="text-align:left;"> Si les pêcheurs qui partent ensemble sont issus de la même foyer ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> partage_capture </td>
   <td style="text-align:left;"> mode de partage des gains par les pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> probleme_rencontre </td>
   <td style="text-align:left;"> les problèmes rencontrés par les pêcheurs aux chaluts ou aux sennes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> probleme_avec_des_fermiers </td>
   <td style="text-align:left;"> si les pêcheurs ont eu des problèmes avec les fermiers algoculteurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> type_de_probleme_avec_les_fermier </td>
   <td style="text-align:left;"> types des problèmes entre les pêcheurs aux chaluts ou aux sennes avec les fermiers </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pratique_peche </td>
   <td style="text-align:left;"> solution_prise </td>
   <td style="text-align:left;"> les solutions prises pour resoudre les problèmes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> nombre_de_engin_en_possession </td>
   <td style="text-align:left;"> nombre de chalut ou senne en possession du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> la provenance des engins de pêche des pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> distributeur_moustiquaire </td>
   <td style="text-align:left;"> les organismes qui distribuent des moustiquaire dans la zone </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> nombre_de_moustiquaire_distribue </td>
   <td style="text-align:left;"> nombre de moustiquaire distribué par ces organismes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> lieu_d_achat </td>
   <td style="text-align:left;"> lieu où les pêcheurs achètent les moustiquaire pour leur engins </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> prix_moustiquaire </td>
   <td style="text-align:left;"> prix unitaire d'un moustiquaire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> dure_de_vie_engin </td>
   <td style="text-align:left;"> durée de vie de l'engin de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> prix_totale_engin </td>
   <td style="text-align:left;"> prix totale de l'engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> provenance_engin </td>
   <td style="text-align:left;"> prix_d_entretien </td>
   <td style="text-align:left;"> prix d'entretien de l'engin </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> systeme_de_tris </td>
   <td style="text-align:left;"> système comment les pêcheurs tri leur capture post debarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> vente </td>
   <td style="text-align:left;"> si un lot est destiné à la vente </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> autoconsommation </td>
   <td style="text-align:left;"> si un lot est destiné à l'autoconsommation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> vente_frais </td>
   <td style="text-align:left;"> si les capture est vendu frais </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> vente_transforme </td>
   <td style="text-align:left;"> si les capture est vendu transformé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> critere_de_choix </td>
   <td style="text-align:left;"> les critère sur lesquelles le système de tri se base </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> personne_qui_tris </td>
   <td style="text-align:left;"> la personne qui tri les capture post débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> personne_qui_vend </td>
   <td style="text-align:left;"> la personne qui vend les capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> mode_de_vente </td>
   <td style="text-align:left;"> mode de vente des capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> prix_par_unite_de_vente </td>
   <td style="text-align:left;"> prix par unité de vente des capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> lieu_de_vente </td>
   <td style="text-align:left;"> lieu où les pêcheurs vendent leur captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> clients </td>
   <td style="text-align:left;"> les clients cibles du pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> ciblage_des_especes_pour_la_transformation </td>
   <td style="text-align:left;"> si le pêcheur cible des espèces pour la transformation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> espece_cible_de_la_transformation </td>
   <td style="text-align:left;"> les espèces transformées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> pourquoi_ces_especes_en_particulier </td>
   <td style="text-align:left;"> la raison pour laquelle ces espèces sont transformées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> methode_de_transformation </td>
   <td style="text-align:left;"> méthode de transformation utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> clients_produits_transformes </td>
   <td style="text-align:left;"> les clients qui achètent les produits transformés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> pourcentage_de_capture_autoconsommee </td>
   <td style="text-align:left;"> pourcentage estimatif de la capture destinée à l'autoconsommation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> facteurs_de_l_autoconsommation </td>
   <td style="text-align:left;"> les facteurs du pourquoi les pêcheurs autoconsomment ou pas leur capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> frequence_autoconsommation </td>
   <td style="text-align:left;"> nompbre de fois par semaine ou le pêcheur consomme ses captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> ciblage_des_especes_pour_l_autoconsommation </td>
   <td style="text-align:left;"> Si le pêcheur cible des espèces pour la consommation </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> especes_cibles_autoconsommation </td>
   <td style="text-align:left;"> les espèces autoconsomées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> pourquoi_ces_especes_en_particulier </td>
   <td style="text-align:left;"> la raison pour laquelle ces espèces sont autoconsomées mais pas vendues ou transformées </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Caracterisation_devenir </td>
   <td style="text-align:left;"> personne_qui_prepare_les_especes_autoconsomme </td>
   <td style="text-align:left;"> la personne qui prepare les espèces destinées à l'autoconsommation dans le foyer du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> prix_par_unite_de_vente </td>
   <td style="text-align:left;"> A combien le pêcheur vend ses captures pendant la haute saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> Prix par kilo </td>
   <td style="text-align:left;"> le prix de vente rapporter par kilo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> haute_saison </td>
   <td style="text-align:left;"> Periode de haute saison pour le pêcheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> poids_capture_haute_saison </td>
   <td style="text-align:left;"> le poids de capture total pendant la haute saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> frequence_de_peche_haute_saison </td>
   <td style="text-align:left;"> nombre de fois ou le pêcheur part en pêche pendant la haute saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> basse_saison </td>
   <td style="text-align:left;"> Periode de basse saison pour le pêcheur enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> prix_par_unite_de_vente </td>
   <td style="text-align:left;"> le poids de capture total pendant la haute saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> Prix par kilo </td>
   <td style="text-align:left;"> A combien le pêcheur vend ses captures pendant labasse saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> poids_capture_basse_saison </td>
   <td style="text-align:left;"> le poids de capture total pendant la basse saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Revenu </td>
   <td style="text-align:left;"> frequence_de_peche_basse_saison </td>
   <td style="text-align:left;"> nombre de fois ou le pêcheur part en pêche pendant la basse saison </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> nombre_repas_par_jour </td>
   <td style="text-align:left;"> le nombre de repas pris dans le foyer du pêcheur chauque jour </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> consommation_viande </td>
   <td style="text-align:left;"> Si le pêcheur consomme de la viande ( hormis les poissons) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> frequence_de_consommation_de_viande_par_semaine </td>
   <td style="text-align:left;"> Fréquence de consommation de viande par semaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> frequence_de_consommation_de_poissons_par_semaine </td>
   <td style="text-align:left;"> Fréquence de consommation de poissons par semaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Benefice_alimentaire </td>
   <td style="text-align:left;"> frequence_de_consommation_de_poissons_issu_chalut_par_semaine </td>
   <td style="text-align:left;"> Fréquence de consommation de poissons issus de chalut/senne par semaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activite_secondaire </td>
   <td style="text-align:left;"> activite_secondaire </td>
   <td style="text-align:left;"> Si le pêcheur pratique d'autre activité à part la pêche aux chaluts/sennes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activite_secondaire </td>
   <td style="text-align:left;"> nature_activite_secondaire </td>
   <td style="text-align:left;"> la nature de l'autre activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activite_secondaire </td>
   <td style="text-align:left;"> autre_engin </td>
   <td style="text-align:left;"> Les autres engins (autres chaluts/sennes) utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Activite_secondaire </td>
   <td style="text-align:left;"> habitat_cible_autre_engin </td>
   <td style="text-align:left;"> Zone où le pêcheur part pour pêcher avec les autres engins </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Femme_des_pecheurs </td>
   <td style="text-align:left;"> peche_aux_chaluts_ou_senne </td>
   <td style="text-align:left;"> si la femme du pêcheur part en pêche avec son mari ou autre groupe de pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Femme_des_pecheurs </td>
   <td style="text-align:left;"> activite_de_la_femme </td>
   <td style="text-align:left;"> si la femme pratique d'autre activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Femme_des_pecheurs </td>
   <td style="text-align:left;"> autre_activite_de_la_femme </td>
   <td style="text-align:left;"> nature des autres activité pratiqué par la femme du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enfants_pecheurs </td>
   <td style="text-align:left;"> proprietaire_engin </td>
   <td style="text-align:left;"> si les enfants pêcheurs utilisent leur propre engins ou celui de quelqu'un d'autre </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enfants_pecheurs </td>
   <td style="text-align:left;"> Proprio </td>
   <td style="text-align:left;"> le proprietaire de l'engin utilisé par les enfants pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enfants_pecheurs </td>
   <td style="text-align:left;"> revenu_journalier </td>
   <td style="text-align:left;"> le gains que les enfats pêcheurs tirent de leur activité </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Enfants_pecheurs </td>
   <td style="text-align:left;"> utilisation_revenu </td>
   <td style="text-align:left;"> l'utilisation de revenu par les enfants pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> N°_fiche </td>
   <td style="text-align:left;"> numéro de fiche du suivi de débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Village </td>
   <td style="text-align:left;"> village où le suivi a été effectué </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> la date du suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Maree </td>
   <td style="text-align:left;"> la marée du jour de suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Nom_pecheur </td>
   <td style="text-align:left;"> nom du pêcheur suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Engin </td>
   <td style="text-align:left;"> l'engin utilisé par le pêcheur du suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Code_pecheur </td>
   <td style="text-align:left;"> code attribué aux pêcheur suivis suivant leur engin de pêche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Zone_de_peche </td>
   <td style="text-align:left;"> zone où le pêche est allé pêché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Famille </td>
   <td style="text-align:left;"> les familles des poissons identifié après manipulation au laboratoire </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> CLASSE </td>
   <td style="text-align:left;"> la classe y afférant chaque familles </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> CODE_MORPHO </td>
   <td style="text-align:left;"> Code atribué à chaque morpho-espèces de chaque famille </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> Nombre </td>
   <td style="text-align:left;"> abondance de chaque morpho-espèces dans l'échantillons de captures </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Nom_du_pecheur </td>
   <td style="text-align:left;"> nom du pêcheur du suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Engin </td>
   <td style="text-align:left;"> engin de pêche utilisé par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Code_pecheur </td>
   <td style="text-align:left;"> code attribué à chaque pêcheur du suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Capture </td>
   <td style="text-align:left;"> numéro attribué à l'echantillon de capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Systeme_de_tri </td>
   <td style="text-align:left;"> système de tri utilisé par le pêcheur lors du débarquement </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Devenir </td>
   <td style="text-align:left;"> la destination des lots de capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Especes </td>
   <td style="text-align:left;"> les espèces composants chaque lots </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Critere_de_choix </td>
   <td style="text-align:left;"> les critère s de choix qui ont permis de composer chaque lots </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Destination </td>
   <td style="text-align:left;"> qui a pris chaque lot du capture </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Modalite_de_vente </td>
   <td style="text-align:left;"> comment les captures ont été vendu </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Devenir_pecheur </td>
   <td style="text-align:left;"> Prix_totale </td>
   <td style="text-align:left;"> prix total de vente </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Nom_mareyeuse </td>
   <td style="text-align:left;"> nom de la mareyeuse qui a pris les captures du pêcheur du suivi </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Code_mareyeuse </td>
   <td style="text-align:left;"> code attribué à chacune des mareyeuse </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Systeme_de_tri </td>
   <td style="text-align:left;"> système de tri utilisé par la mareyeuse pour trier les captures qu'elle à pris </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Critere_de_choix </td>
   <td style="text-align:left;"> les critères sur lesquelles se base ces tris </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Composition_du_lot </td>
   <td style="text-align:left;"> si le lot de capture formé des mareyeuses est homogène ou hétérogène </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Especes_dominante </td>
   <td style="text-align:left;"> espèces dominantes de chaques lots formés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Destination </td>
   <td style="text-align:left;"> lieu où va les captures prises par les mareyeuses </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Modalite_de_vente </td>
   <td style="text-align:left;"> comment les captures ont été vendu par les mareyeuses </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mareyeuse </td>
   <td style="text-align:left;"> Prix_par_unite_de_vente </td>
   <td style="text-align:left;"> prix par unité de vente de la mreyeuse </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Nom_du_collecteur </td>
   <td style="text-align:left;"> nom du collecteur de produits séchés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Residence </td>
   <td style="text-align:left;"> Où vit le collecteur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Modalite_d_achat </td>
   <td style="text-align:left;"> comment le collecteur achète les produits auprès des pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Prix_d_achat </td>
   <td style="text-align:left;"> prix de produits séchés de pêcheurs au collecteurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Quantite_semaine </td>
   <td style="text-align:left;"> quantité de produits séché achèté par le collecteur chaque semaine </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Composition </td>
   <td style="text-align:left;"> Où le collecteur prend tout les produit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Origine_des_produits </td>
   <td style="text-align:left;"> comment le collecteur vend les produits séché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Modalite_de_vente </td>
   <td style="text-align:left;"> si le collecteur commande en avance auprès des pêcheurs les produits séché ou non </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Prix_de_vente_par_Kg </td>
   <td style="text-align:left;"> prix par kilo de produits séchés de collecteurs au consommateurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Usages </td>
   <td style="text-align:left;"> usage des produits séché </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Destination_des_produits </td>
   <td style="text-align:left;"> destination finale des produits séché depuis le collecteurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Collecteur </td>
   <td style="text-align:left;"> Ecoulement_de_produit </td>
   <td style="text-align:left;"> si les produits séché prises par le collecteurs sont écoulé en même temps ou seulement en parti </td>
  </tr>
</tbody>
</table>

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data_dictionary_chalut moustiquaire.Rmd)
