---
title: "data_dictionary_sarodrano"
author: "Herinomena Andriamasinoro, Julien Barde"
date: "2023-07-12"
output:
  html_document:
    keep_md: true
    toc: true
    theme: united
    number_sections: true
params: 
  gsheet_tables: "https://docs.google.com/spreadsheets/d/1P1mA62rP30XJC6JpUVfdkB6fMXQyzabfbrGUqBf9vTo/edit#gid=695475155"
  gsheet_columns: "https://docs.google.com/spreadsheets/d/1P1mA62rP30XJC6JpUVfdkB6fMXQyzabfbrGUqBf9vTo/edit?usp=sharing"
  #schema_db: "https://drive.google.com/uc?id=1vDXsrQA48pZq3r-93JtaZXTN0JIvoRwu"

    
---








# Introduction

This report describes the data dictionary for the
"fish diversity in the Sarodrano mangrove" data. The contents are taken from the following Google spreadsheets:

* [List of colums for all tables](https://docs.google.com/spreadsheets/d/1P1mA62rP30XJC6JpUVfdkB6fMXQyzabfbrGUqBf9vTo/edit#gid=695475155)
* [List of colums for all columns](https://docs.google.com/spreadsheets/d/1P1mA62rP30XJC6JpUVfdkB6fMXQyzabfbrGUqBf9vTo/edit?usp=sharing)

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
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Les FICHES_VAR_DATA sont des fiches utilisées pour prendre les variables sur les captures, considérées comme utiles, lors des campagnes d'échantillonnages </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Les FICHES PARAMETRE PH_CH sont des fiches de prélèvements des paramètres environnementaux durants chaques sorties </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> L'ENQUETE SARODRANO est une enquête menée dans le but d'obtenir des données historiques sur les pratiques de pêche dans la baie de Sarodrano </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> L'ENQUETE_PCM est une enquête préliminaire visant à déterminer les modalités d'échantillonnage auprès des pêcheurs au chalut à moustiquaire le long de la mangrove de Sarodrano </td>
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
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Campagne </td>
   <td style="text-align:left;"> Numéro de campagne </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> Date d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Engins </td>
   <td style="text-align:left;"> Engins de pêche (F : filet maillant ; CM : Chalutà moustiquaire) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> NOECH </td>
   <td style="text-align:left;"> Numéro de l'échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Code_sac </td>
   <td style="text-align:left;"> Code marqué sur le sac en plastique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> J_N </td>
   <td style="text-align:left;"> Moment de pêche (J : jour ; N : Nuit) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Localisation </td>
   <td style="text-align:left;"> Localisation de la zone de pêche (B: bordure ; C : Chenal) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Engin_pech </td>
   <td style="text-align:left;"> Engins de pêche (FM 50 : filet maillant de 50 mm, FM 70 : filet maillant de 70 mm, FM 80 : filet maillant de 80 mm, CM : chalut à moustiquaire) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Nom_Pecheur </td>
   <td style="text-align:left;"> Nom du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Type_Pecheur </td>
   <td style="text-align:left;"> Type du pêcheur (AP : à pied ; P : utilisant un pirogue) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Heure_pose </td>
   <td style="text-align:left;"> Heure de pose des filets maillants </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Heure_releve </td>
   <td style="text-align:left;"> Heure de releve des filets maillants </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Effort </td>
   <td style="text-align:left;"> Temps de pêche effective des pêcheurs </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> No_Planche </td>
   <td style="text-align:left;"> Lettre désignant une planche correspondant à un morphotype dans un échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Code_Photo_Planche </td>
   <td style="text-align:left;"> Code photo d'une planche avec un morphotype d'une échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Famille </td>
   <td style="text-align:left;"> Famille sur une planche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Nom_vern </td>
   <td style="text-align:left;"> Nom vernaculaire donnée par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> ID_BOLD </td>
   <td style="text-align:left;"> Identification vue dans BOLD système </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> BIN </td>
   <td style="text-align:left;"> Barcode Index Number donnée par BOLD système après barcoding </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Nom_sct_morph </td>
   <td style="text-align:left;"> Nom scientifique obtenue par identification morphologique </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Nombre </td>
   <td style="text-align:left;"> Nombre sur une planche </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Pds_total </td>
   <td style="text-align:left;"> Poids des individus de même morphotype </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Long_moyen </td>
   <td style="text-align:left;"> Longueur moyenne des individus sur une palche, obtenue par mensuration avec image J </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Observations </td>
   <td style="text-align:left;"> Observations sur l'individus ou remarques sur l'identification </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Correspondance </td>
   <td style="text-align:left;"> Correspondance des individus non barcodés par rapport à ceux barcodés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> NOIND </td>
   <td style="text-align:left;"> Numero de l'individu d'une morphotype dans une échantillon </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> NOECH_NOIND </td>
   <td style="text-align:left;"> Code photo d'un individu à barcodé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> LS </td>
   <td style="text-align:left;"> Longueur standard d'un individu à barcodé </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Img </td>
   <td style="text-align:left;"> Confirmation de l'image (ok : fini) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Tissus </td>
   <td style="text-align:left;"> Confirmation du tissus (ok : fini) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Select_barcoding </td>
   <td style="text-align:left;"> Nombre d'individu séléctionné pour le barcoding </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE_VAR_DATA </td>
   <td style="text-align:left;"> Observations </td>
   <td style="text-align:left;"> Observation sur les individus à barcodés </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Mois </td>
   <td style="text-align:left;"> Mois d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> Date d'échantillonnage </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Hp </td>
   <td style="text-align:left;"> Heure de pose des filets maillants </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Hr </td>
   <td style="text-align:left;"> Heure de releve des filets maillants </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> Temperature de l'eau </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> Salinité de l'eau </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> TE </td>
   <td style="text-align:left;"> Turbidité de l'eau </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Vc </td>
   <td style="text-align:left;"> Vitesse du courant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Pr </td>
   <td style="text-align:left;"> Profondeur de l'eau (prise au pose du filet) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FICHE PARAMETRE PH_CH </td>
   <td style="text-align:left;"> Dv </td>
   <td style="text-align:left;"> Direction du vent fort </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> start </td>
   <td style="text-align:left;"> Debut de l'interview </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> end </td>
   <td style="text-align:left;"> Fin de l'interview </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Nom </td>
   <td style="text-align:left;"> Nom (surnom) deu repondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Age </td>
   <td style="text-align:left;"> Age du repondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Origine </td>
   <td style="text-align:left;"> Origine du repondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Activité </td>
   <td style="text-align:left;"> Activité du repondant </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Avez-vous pêcher dans la mangrove ces 25 dernières années? </td>
   <td style="text-align:left;"> Question pour la contuiniter de l'interview, Si oui : continue, non : arret de l'interview </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Quand est ce que vous avez arreter!? </td>
   <td style="text-align:left;"> Si oui : peche encore ou pas , si pas : cette question se pose. </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Pourquoi vous avez arreter!? </td>
   <td style="text-align:left;"> Raison de l'arret du repondant (reponse libre) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Genre engins utilisés </td>
   <td style="text-align:left;"> Genre d'engins utilisé par le repondant dans une sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Nouveaux engins </td>
   <td style="text-align:left;"> Question sur la présence de nouveau engins (Reponse à choix multiple pour les nouveaux engins et date libre pour l'apparition de ces engins) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Diversité de poisson </td>
   <td style="text-align:left;"> Nom vernaculaire repertorié : correspond au nom vernaculaire cité par l'enquêté </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Diversité de poisson </td>
   <td style="text-align:left;"> Poisson diurne et poisson nocturne : La diversité selon la sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Diversité de poisson </td>
   <td style="text-align:left;"> Poisson abondant autre fois : poisson les plus fréquent autrefois </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Diversité de poisson </td>
   <td style="text-align:left;"> Espece frequent : Espece encore fréquent dans leur capture / Espece disparue : Espece qu'il ne rencontre plus </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Moment de pêche </td>
   <td style="text-align:left;"> Moment le plus propice pour la pêche le long de la mangrove </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Engin plus captive </td>
   <td style="text-align:left;"> Question sur les engins qu'il trouve plus captifs dans la baie (Question à choix multiple avec 7 engins de pêche qui sera noté de plus capftif à capture rien) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Changement de la pêche </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Changement de la pêche_URL </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox / Lien </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Changement de l'environnement </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Changement de l'environnement_URL </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox / Lien </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Perception du changement dans la baie </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Perception du changement dans la baie_URL </td>
   <td style="text-align:left;"> Question libre, enregistrer sous dictaphone à l'aide de Kobotoolbox / Lien </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Photo de l'enquête </td>
   <td style="text-align:left;"> Photo lors de l'enqête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Photo de l'enquête_URL </td>
   <td style="text-align:left;"> Photo lors de l'enqête /Lien </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_SARODRANO </td>
   <td style="text-align:left;"> Localisation </td>
   <td style="text-align:left;"> Point GPS de l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Date </td>
   <td style="text-align:left;"> Date de l'enquête </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Nom pecheur </td>
   <td style="text-align:left;"> Nom du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Originaire </td>
   <td style="text-align:left;"> Origine du pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Engins utilisé </td>
   <td style="text-align:left;"> Engins utilisés par le pêcheur </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Espace </td>
   <td style="text-align:left;"> Espace ou zone de pêche (bordure ou chenal ou zone des herbiers) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Duree sortie </td>
   <td style="text-align:left;"> Durée moyenne de sortie </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Moment de sortie </td>
   <td style="text-align:left;"> Sortie en mer (jour ou nuit) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Espece </td>
   <td style="text-align:left;"> Le nom vernaculaire des espèces abondants dans leur capture) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ENQUETE_PCM </td>
   <td style="text-align:left;"> Observation </td>
   <td style="text-align:left;"> Observation sur leur capture et l'envirronement dans la baie </td>
  </tr>
</tbody>
</table>

# References

The script to generate this report is available [here](https://github.com/juldebar/MIKAROKA/blob/main/Rmd/Data_dictionary_sarodrano.Rmd)
