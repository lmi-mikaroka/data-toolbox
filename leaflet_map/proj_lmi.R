library(leaflet)
library(leaflegend)
library(leaflet.extras)
library(readxl)
library(sf)
library(htmlwidgets)#export to HTML code
# import fichier bilan metadonnée
bilanko <- read_excel("bilan_MD.xlsx")
polygones_wkt <- bilanko$Zone_etude

# Convertir la colonne polygone_wkt en objets spatiaux
polygones_sf <- st_as_sfc(polygones_wkt)

# Calculer les centroïdes des polygones
centroïdes <- st_centroid(polygones_sf)
coordinates <- st_coordinates(centroïdes)
bilanko$long<-longitude <- coordinates[, "X"]
bilanko$lat<-latitude <- coordinates[, "Y"]

data_autre<-subset(bilanko, bilanko$Composante=="Autres",)
data_coraux<-subset(bilanko, bilanko$Composante=="Coraux",)
data_invertebres<-subset(bilanko, bilanko$Composante=="Invertebres",)
data_megafaune<-subset(bilanko, bilanko$Composante=="Megafaune",)
data_microorganismes<-subset(bilanko, bilanko$Composante=="Microorganismes",)
data_peche<-subset(bilanko, bilanko$Composante=="Peche",)
data_poisson<-subset(bilanko, bilanko$Composante=="Poissons",)
data_transverse<-subset(bilanko, bilanko$Composante=="Transverse",)


img_autre<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_autres.jpg"
img_coraux<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_coraux.jpg"
img_invertebre<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_invertebre.jpg"
img_megafaune<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_megafaune.jpg"
img_micro<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_micro.jpg"
img_peche<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_peche.jpg"
img_poisson<-"http://localhost/wordpress/wp-content/uploads/2024/02/img_poisons.jpg"
img_transveral<-"http://localhost/wordpress/wp-content/uploads/2024/02/Img_transver.jpg"


leafImg<-c(img_autre,img_coraux,img_invertebre,img_megafaune,img_micro,img_peche,img_poisson,img_transveral)
composates<-c("Autres","Coraux","Invertebres","Megafaune","Microorganismes","Peche","Poissons","Transverse")
factorPal <- colorFactor(palette = "Dark2", domain = composates)

#factorPal <- colors[[i]]
list_of_dfs <- list(data_autre,data_coraux, data_invertebres,data_megafaune,data_microorganismes,data_peche,data_poisson,data_transverse)

my_map <-leaflet() %>%#ajouter pour export Html
#leaflet() %>%
  addTiles() %>%
  addResetMapButton() %>% 
  addProviderTiles("CartoDB.Positron") %>%
  setView(lng = 46.8691, lat = -18.7669, zoom = 6) %>% 
  addLayersControl(
      overlayGroups = composates,
      options = layersControlOptions(collapsed = FALSE)) %>% 
  ##############################################################################
      addLegendFactor(
              pal = factorPal,
              title = htmltools::tags$div('Legendes', style = 'font-size: 16px; color: blue;'),
              values = bilanko$Composante,
              position = 'bottomright',
              shape = 'circle',
              width = 10,
              height = 10
              ) %>%
  # ##############################################################################
    # 
    addMiniMap( # add mini map
      tiles = providers$OpenStreetMap,
      width = 130,
      height = 130,
      toggleDisplay = TRUE
    ) %>%
    addScaleBar(position = "bottomleft")
  
  # Add circle markers using a loop
  for (i in 1:length(list_of_dfs)) {
    variable_name <- paste0("data_", i)
    variable_name <-list_of_dfs[[i]]
    my_map <- addCircleMarkers(
      map = my_map,
      data= variable_name,
      lng = variable_name$long,
      lat = variable_name$lat,
      group = composates[[i]],
      color = factorPal(composates[[i]]),
      fillOpacity = 0.5,
      clusterOptions = markerClusterOptions(autoPan = TRUE),
      popup = paste(
                            "<div style='display: flex;'>",
                            "<div style='flex: 1;'>",
                            paste0("<img src = ", leafImg[[i]], "' width='90%' height='90%'>"),
                            "<a href=",variable_name$Lien,">","Voir tout","</a>",
                            "</div>",
                            "<div style='flex: 1;'>",
                            "<strong>Nom et prenom:</strong><br>", variable_name$Nom,"<br>",
                            "<strong>Thematique:</strong><br>", variable_name$Thematique,"<br>",
                            "<strong>Serie de données:</strong><br>", variable_name$Fin_debut_serie_donnees,"<br>",
                            
                            "</div>",
                            "</div>"
    )
    )
    
  }
my_map
################################################################################
#saveWidget(my_map, file="my_mapV1.html")

