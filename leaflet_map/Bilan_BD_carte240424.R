library(leaflet)
library(leaflegend)
library(leaflet.extras)
library(readxl)
library(sf)
library(googlesheets4)
library(htmlwidgets)#export to HTML code



data_sheet <- read_sheet("https://docs.google.com/spreadsheets/d/13j0U6pNrO-3MaP-7y7OmpevgcdcxTwn0NVTCSyZWW4I/edit#gid=1204292361")

#-------------------------------------------------------------------------------
# Extraction des polygonnes
data_sheet$polygone <- substring(data_sheet$SpatialCoverage, 11, )
#-----------------------------------------------------------------------------
# Extraction des lien des metadonnées
data_sheet$Lien<-paste0("https://geonetwork-sdi-lab.d4science.org/geonetwork/srv/fre/catalog.search#/metadata/",data_sheet$Identifier)

# Convert the geometrical data to sf objects
your_data_sf <- st_as_sf(data_sheet, wkt = "polygone")

for (i in 1:nrow(your_data_sf)) {
  
  variable_name <- paste0("centroide_", i)
  #   # Calculate centroids for each constituent polygon if mutipolygone
  variable_value <- st_centroid(st_cast(your_data_sf[i, ], "POLYGON"))
  
  # Assigning value to each variable
  assign(variable_name, variable_value)
  
  
  
}

centroide<-list(centroide_1,centroide_2,centroide_3,centroide_4,centroide_5,centroide_6,centroide_7,centroide_8,centroide_9,centroide_10,
                centroide_11,centroide_12,centroide_13,centroide_14,centroide_15,centroide_16,centroide_17,centroide_18)

# Convert list to data frame
data_sheet <- do.call(rbind, centroide)
# Convert the data fram to sf objects
sfc_object <- st_as_sfc(data_sheet)
#calculate centroides
coordinates <- st_coordinates(sfc_object)
data_sheet$long<-longitude <- coordinates[, "X"]
data_sheet$lat<-latitude <- coordinates[, "Y"]
data_sheet
my_map <-leaflet() %>%#ajouter pour export Html
  #leaflet() %>%
  addTiles() %>%
  addResetMapButton() %>% 
  addProviderTiles("CartoDB.Positron") %>%
  setView(lng = 46.8691, lat = -18.7669, zoom = 6) %>% 
  #--------------------------------------------------------
  addMiniMap( # add mini map
    tiles = providers$OpenStreetMap,
    width = 130,
    height = 130,
    toggleDisplay = TRUE
  ) %>%
  addScaleBar(position = "bottomleft")
  #-----------------------------------------------------------
  # addLegend(
  #   position = "bottomright",
  # 
  #   colors = "red",
  #   labels = labels,
  #   title = "Legendes",
  #   opacity = 0.5
  # )
  
for (i in 1:nrow(data_sheet)) {
  # variable_name <- paste0("data_", i)
  # variable_name <-my_data[i,]
  my_map <- addCircleMarkers(
    map = my_map,
    data= data_sheet,
    lng = data_sheet$long,
    lat = data_sheet$lat,
    radius = 5,
    color = "blue",
    fill = TRUE,
    fillColor = "yellow",
    fillOpacity = 0.5,
    weight = 2,
    opacity = 0.1,
    clusterOptions = markerClusterOptions(autoPan = TRUE),
    popup = paste(
      
      "<div>",
      "<iframe width='600' height='400' src=",data_sheet$Lien,"></iframe>",
      "</div>"
    ),
    popupOptions = popupOptions(
      closeButton = TRUE,   # Show close button
      minWidth = 400,       # Minimum width of the popup
      maxWidth = 600,       # Maximum width of the popup
      autoPan = TRUE,       # Auto-pan the map to display the popup
      keepInView = TRUE     # Keep the whole popup content in the map view
    )
  )
  
}
my_map

############################,
saveWidget(my_map, file="my_mapV240501.html")

