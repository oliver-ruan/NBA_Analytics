#--------------------------------Load Functions--------------------------------#
# NBA_Analytics Functions
source("functions.R")

# NBA_PredictPlayerSalary Functions
source("C:/Users/ruanb/OneDrive/Documents/NBA_Analytics/NBA_PredictPlayerSalary/NBA_PredictPlayerSalary_Functions.R")




#--------------------------------Load Libraries--------------------------------#
# devtools::install_github("abresler/nbastatR")
# devtools::install_github("mbjoseph/bbr")
library(bbr)
library(tidyverse)
library(rvest)




#---------------------------------Collect Data---------------------------------#
# Collect Player Slugs 
# AllPlayerSlugs <- GetPlayerSlugs()
AllPlayerSlugs <- read.csv('C:/Users/ruanb/OneDrive/Documents/NBA_Analytics/NBA_PredictPlayerSalary/AllPlayerSlugs.csv')


schedule <- url %>% read_html %>%  html_node('table#totals') %>% html_table() 
# https://stackoverflow.com/questions/69007853/error-in-usemethodhtml-table-no-applicable-method-for-html-table-applied