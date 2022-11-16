#######################
library(RPostgres)
library(DBI)
library(dplyr)
library(dotenv)
setwd("/home/julien/Desktop/CODES/MIKAROKA")
load_dot_env(file = ".env")

con <- dbConnect(drv=RPostgres::Postgres(),
                 dbname = Sys.getenv("DB_PECHE_NAME"),
                 host = Sys.getenv("DB_PECHE_HOST"),
                 user=Sys.getenv("DB_PECHE_USER"),
                 password=Sys.getenv("DB_PECHE_PWD"),
                 port=Port)

query <- paste(readLines("https://raw.githubusercontent.com/juldebar/MIKAROKA/main/SQL/data_dictionnary.sql"), collapse=" ")
# query <- paste(readLines("/home/julien/Desktop/CODES/MIKAROKA/SQL/data_dictionnary.sql"), collapse=" ")

df_sql <- dbGetQuery(con, query)
colnames(df_sql)

df_gsheet <- as.data.frame(gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1V4XlsKNpm7I4Ya2vEjdZE7I6GQBmfzo7STJB0LxUmiA/edit?usp=sharing"))
colnames(df_gsheet)

df_dictionary <- inner_join(df_sql, df_gsheet,by=c('table_schema'='schema','FeatureType'='table', 'MemberCode'='column')) %>% 
  select (-c('MemberName','MemberType','MinOccurs','MaxOccurs',
             'default_value','DefinitionSource','valueType','max_length',
             'MeasurementUnit','RegisterId','RegisterScript'))

colnames(df_dictionary)

               