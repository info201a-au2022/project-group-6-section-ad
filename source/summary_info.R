# summary_info.r

library(tidyverse)

medals_by_country_df <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")

medals_count_tokyo <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/Medals_count_tokyo.csv")

country_gdp <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/GDP_by_country.csv")


# find total medal count for each country
summary_num_medals <- medals_by_country_df %>%
  filter(Medal == "Gold" | Medal == "Silver" | Medal == "Bronze") %>% 
  group_by(Team) %>% 
  summarize(total_medals = n())

# rename "Team" column in medals_count_tokyo to join dataframes
medals_count_tokyo <- medals_count_tokyo %>% 
  rename("Team" = "Team.NOC")

# join the two medals dataframes
joined_medals_df <- left_join(summary_num_medals, medals_count_tokyo, by = "Team") %>% 
  select(Team, Total, total_medals)

# add "total" columns together
joined_medals_df$Total_Medals <- rowSums(joined_medals_df[ , c(2,3)], na.rm = TRUE)

# remove unused old total columns
joined_medals_df <- joined_medals_df %>% 
  select(Team, Total_Medals)


# actual summary numbers:
summary_info <- list()

#how many total countries we are including
summary_info$summary_num_countries <- nrow(country_gdp)

#most recent average national GDP 
summary_info$summary_avg_gdp <- country_gdp %>% 
  select(Country.Name, X2021) %>% 
  summarize(avg_gdp = mean(X2021, na.rm = T)) %>% 
  pull()

#overall average national medal count
summary_info$summary_avg_medal_count <- joined_medals_df %>% 
  summarize(avg_medals = mean(Total_Medals, na.rm = T)) %>% 
  pull()

#number of countries above average GDP
summary_info$summary_above_avg_gdp <- country_gdp %>% 
  mutate(above_avg = X2021 > summary_info$summary_avg_gdp) %>% 
  select(above_avg) %>% 
  summarize(total = sum(above_avg == TRUE, na.rm = T)) %>% 
  pull()

#number of countries above average medal count
summary_info$summary_above_avg_medals <- joined_medals_df %>% 
  mutate(above_avg = Total_Medals > summary_info$summary_avg_medal_count, na.rm = T) %>% 
  select(above_avg) %>% 
  summarize(total = sum(above_avg == TRUE, na.rm = T)) %>% 
  pull()



  


  
