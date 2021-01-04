# Load Libraries
library(tidyverse)


# Read in proposal submission data from google form csv
proposals <- read_csv('input/Winter 21 PDD Call for Proposals.csv')


# Prepare proposal for reviewers
proposals %>% 
  # Assign random number to proposal
  mutate(id = row_number()) %>%
  # Change column names
  rename(Theme = 'Conference Theme for Proposal',
         Title = 'Title of proposal') %>% 
  # Select columns and set order
  select('id', 'Theme', 'Title', 'Proposal') %>%
  # write out all proposal reviews
  write_csv('output/all_proposal_review.csv') %>% 
  # remove previously added rows from file 
  tail(., -16) %>% # (df, Row # - 1)
  # Save csv to import into Google Forms
  write_csv('output/added_proposal_review.csv')
