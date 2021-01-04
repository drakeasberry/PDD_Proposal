# Load Libraries
library(tidyverse)


# Read in proposal submission data from google form csv
accepted_proposals <- read_csv('Test Winter 21 PDD Call for Proposals.csv')

# Split up co-presnters into separate columns
accepted_proposals <- accepted_proposals %>%
  separate(`List names of co-presenter(s)`, 
           c('co_pres_1', 'co_pres_2', 'co_pres_3', 'co_pres_4', 'co_pres_5', 'co_pres_6'), 
           sep = ';', 
           extra = 'drop', 
           fill =  'right') %>% 
  Filter(function(x)!all(is.na(x)), .)
