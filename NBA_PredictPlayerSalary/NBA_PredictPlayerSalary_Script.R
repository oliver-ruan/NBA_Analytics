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

# Data 1998-2022
# https://data.world/etocco/nba-player-stats

# Data 1950-2017
# https://www.kaggle.com/datasets/whitefero/nba-players-advanced-season-stats-19782016

