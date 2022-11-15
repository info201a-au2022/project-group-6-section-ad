library(tidyverse)
library("ggplot2")

olympic_results <- read_csv("athlete_events.csv.zip")
gdp_info <- read_csv("API_NY.GDP.PCAP.PP.CD_DS2_en_csv_v2_4701271.csv")
countryinformation <- read.csv("CountryInformation.csv")
colnames(gdp_info)[2] <- "NOC"
colnames(countryinformation)[1] <- "NOC"

step_1 <- left_join(olympic_results, countryinformation, by = "NOC")

full_table <- left_join(step_1, gdp_info, by = "NOC") %>% 
  select(-TableName,)

aggregated_table <- full_table %>% 
  select(Team, Season, Medal, Region, IncomeGroup)
        
average_gold <- aggregated_table %>% 
  select(Team, Medal) %>%  
  filter(Medal == "Gold") %>% 
  group_by(Team) %>% 
  summarize(total = n()) %>% 
  summarize(average_gold = mean(total))














