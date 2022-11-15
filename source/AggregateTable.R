library(tidyverse)

# load data
olympic <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")
gdp_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/GDP_by_country.csv")
tokyo_2021 <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/Medals_count_tokyo.csv")

# Aggregate Data
average_medals <- olympic %>% 
  select(Team, Medal) %>%  
  filter(Medal == "Gold" | Medal == "Silver" | Medal == "Bronze") %>% 
  group_by(Team) %>% 
  summarize(total = n()) %>% 
  summarize(average_medals = median(total))

median_2020_GDP <- gdp_data %>%
  rename("Year_2020" = "X2020") %>% 
  select(Year_2020) %>% 
  summarize(median = median(Year_2020, na.rm = TRUE))

usa_gold <- olympic %>% 
  select(Team, Medal) %>% 
  filter(Medal == "Gold",
         Team == "United States") %>% 
  group_by(Team) %>% 
  summarize(sum = n())

usa_gold_percentage <- usa_gold / nrow(olympic)
  
  
  




















