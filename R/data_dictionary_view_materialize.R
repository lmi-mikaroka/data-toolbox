#######################
library(RPostgres)
library(DBI)
library(explore)
library(dplyr)
library(dotenv)

#######################
getwd()
load_dot_env(file = "~/.env")
setwd(Sys.getenv("WD"))
getwd()
#######################

##################################

con <- dbConnect(drv=RPostgres::Postgres(),
                 dbname = Sys.getenv("DB_PECHE_NAME"),
                 host = Sys.getenv("DB_PECHE_HOST"),
                 user=Sys.getenv("DB_PECHE_USER"),
                 password=Sys.getenv("DB_PECHE_PWD"),
                 port=Sys.getenv("DB_PECHE_PORT"))
#############################################


query <- paste(readLines("https://raw.githubusercontent.com/juldebar/MIKAROKA/main/SQL/database_materialized_view.sql"), collapse=" ")
#query <- paste(readLines("C:/Users/Herinomena/Documents/MIKAROKA/SQL/database_materialized_view.sql"), collapse=" ")

df_view_matz <- dbGetQuery(con, query)
colnames(df_view_matz)
str(df_view_matz)
nrow(df_view_matz)

for (i in 1:nrow(df_view_matz)) {
  query <-df_view_matz$definition[i]
  nom_file<-paste(df_view_matz$table_owner[i],df_view_matz$table_name[i],sep="_")
  myfile <- file.path("C:/Users/Herinomena/Desktop/view_matz_sql", paste0(nom_file, ".sql"))
  fileConn<-file(myfile)
  writeLines(query,myfile)
  close(fileConn)
}
