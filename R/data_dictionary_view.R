#######################
library(RPostgres)
library(DBI)
library(explore)
library(dplyr)
library(dotenv)

#######################
load_dot_env(file = "~/.env")
setwd(Sys.getenv("WD"))

#######################

##################################

con <- dbConnect(drv=RPostgres::Postgres(),
                 dbname = Sys.getenv("DB_PECHE_NAME"),
                 host = Sys.getenv("DB_PECHE_HOST"),
                 user=Sys.getenv("DB_PECHE_USER"),
                 password=Sys.getenv("DB_PECHE_PWD"),
                 port=Sys.getenv("DB_PECHE_PORT"))
#############################################


query <- paste(readLines("https://raw.githubusercontent.com/juldebar/MIKAROKA/main/SQL/database_list_view.sql"), collapse=" ")
# query <- paste(readLines("/home/julien/Desktop/CODES/MIKAROKA/SQL/data_dictionnary.sql"), collapse=" ")

df_view <- dbGetQuery(con, query)



colnames(df_view)
str(df_view)
nrow(df_view)

for (i in 1:nrow(df_view)) {
  query <-df_view$query[i]
  nom_file<-paste(df_view$table_owner[i],df_view$table_name[i],sep="_")
  myfile <- file.path("C:/Users/Herinomena/Desktop/view_sql", paste0(nom_file, ".sql"))
  fileConn<-file(myfile)
  writeLines(query,myfile)
  close(fileConn)
}

