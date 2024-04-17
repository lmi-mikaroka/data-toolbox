#######################
library(RPostgres)
library(RPostgreSQL)
library(DBI)
library(geoflow)
library(dotenv)

#######################

load_dot_env(file = "C:/Users/Herinomena/Desktop/exemple_env/.env")
Sys.getenv("wdir")

load_dot_env(file = "C:/Users/Herinomena/Desktop/exemple_env/.env")

geoflow::initWorkflow("C:/Users/Herinomena/Desktop/exemple_env/Config_json_env.json")

geoflow::executeWorkflow("C:/Users/Herinomena/Desktop/exemple_env/Config_json_env.json")
