library(leaflet)
library(leaflegend)
library(leaflet.extras)
library(readxl)
library(sf)
library(htmlwidgets)#export to HTML code

bilanko <- read_excel("Bilan_BD.xlsx")

# Convert the geometrical data to sf objects
your_data_sf <- st_as_sf(bilanko, wkt = "Zone_etude")

for (i in 1:nrow(your_data_sf)) {
  
  variable_name <- paste0("centroide_", i)
  #   # Calculate centroids for each constituent polygon if mutipolygone
  variable_value <- st_centroid(st_cast(your_data_sf[i, ], "POLYGON"))
  
  # Assigning value to each variable
  assign(variable_name, variable_value)
  
}

centroide<-list(centroide_1,centroide_2,centroide_3,centroide_4,centroide_5,centroide_6,centroide_7,centroide_8,centroide_9,centroide_10,
                centroide_11,centroide_12,centroide_13,centroide_14,centroide_15,centroide_16)

# Convert list to data frame
my_data <- do.call(rbind, centroide)
# Convert the data fram to sf objects
sfc_object <- st_as_sfc(my_data)
#calculate centroides
coordinates <- st_coordinates(sfc_object)
my_data$long<-longitude <- coordinates[, "X"]
my_data$lat<-latitude <- coordinates[, "Y"]
#filtre by composantes
data_autre<-subset(my_data, my_data$Composante=="Autres",)
data_coraux<-subset(my_data, my_data$Composante=="Coraux",)
data_invertebres<-subset(my_data, my_data$Composante=="Invertebres",)
data_megafaune<-subset(my_data, my_data$Composante=="Megafaune",)
data_microorganismes<-subset(my_data, my_data$Composante=="Microorganismes",)
data_peche<-subset(my_data, my_data$Composante=="Peche",)
data_poisson<-subset(my_data, my_data$Composante=="Poissons",)
data_transverse<-subset(my_data, my_data$Composante=="Transverse",)


img_autre<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_autres-1.jpg"
img_coraux<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_coraux-1.jpg"
img_invertebre<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_invertebre-1.jpg"
img_megafaune<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_megafaune-1.jpg"
img_micro<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_micro-1.jpg"
img_peche<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_peche-1.jpg"
img_poisson<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/img_poisons-1.jpg"
img_transveral<-"https://mikaroka.ihsm.mg/wp-content/uploads/2024/03/Img_transver-1.jpg"



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
############################
saveWidget(my_map, file="my_mapV240327.html")

