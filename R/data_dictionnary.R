#######################
library(RPostgres)
library(DBI)
library(explore)
library(dplyr)
library(dotenv)
#######################
setwd(Sys.getenv("WD"))
load_dot_env(file = ".env")
#######################

con <- dbConnect(drv=RPostgres::Postgres(),
                 dbname = Sys.getenv("DB_PECHE_NAME"),
                 host = Sys.getenv("DB_PECHE_HOST"),
                 user=Sys.getenv("DB_PECHE_USER"),
                 password=Sys.getenv("DB_PECHE_PWD"),
                 port=Sys.getenv("DB_PECHE_PORT"))

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


############## use explore package for data dictionnary

description <- df_dictionary %>% select(variable=MemberCode,description=definition)

data_dict_md(df_dictionary,
             title = "iris flower data set",
             description = description,
             output_dir = tempdir())

# Data dictionary of a dataframe with additional description of variables
description <- data.frame(
  variable = c("Species"),
  description = c("Species of Iris flower"))
data_dict_md(iris,
             title = "iris flower data set",
             description = description,
             output_dir = tempdir())


githubURL <- ("https://raw.githubusercontent.com/juldebar/MIKAROKA/master/data/dwc.rds")
download.file(githubURL,"dwc.rds", method="curl")
data_dwc <- readRDS("dwc.rds")


df_dwc_gsheet <- as.data.frame(gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1dYFJG9W0PcuprZAL3UIg77k4hY2IXMAiyFTfjHI60-A/edit?usp=sharing"))
colnames(df_dwc_gsheet)  
description <- df_dwc_gsheet %>% select(variable=MemberCode,description=Definition)
data_dict_md(data_dwc,
             title = "Darwin Core example",
             description = description,
             output_dir = tempdir())

