library(tidyverse)
library(plotly)
library(maps)

# remove scientific notation from the map
options(scipen = 999)

# Load GDP dataset file
country_gdp <- read.csv(file = 'data/GDP_by_country.csv', stringsAsFactors = FALSE)

# Select the most recent year and rename column to prepare for join
most_recent_gdp <- country_gdp %>% 
  select(Country.Name, X2021) %>% 
  rename("region" = "Country.Name") %>% 
  rename("Year_2021" = "X2021")

# Rename some elements to match the region in the map dataframe
most_recent_gdp[most_recent_gdp == "United States"] <- "USA"
most_recent_gdp[most_recent_gdp == "Russian Federation"] <- "Russia"
most_recent_gdp[most_recent_gdp == "Egypt, Arab Rep."] <- "Egypt"
most_recent_gdp[most_recent_gdp == "United Kingdom"] <- "UK"


# Create the map dataframe
world_coordinates <- map_data("world")

# Join the GDP dataframe and map dataframe together
joined_df <- left_join(world_coordinates, most_recent_gdp, by = "region")

# Use ggplot to form map
gdp_map <- ggplot(joined_df, aes( x = long, y = lat, group = group )) +
  geom_polygon(aes(fill = Year_2021)) +
  scale_fill_gradientn(colours = c('seagreen1', 'seagreen2', 'seagreen3', 'seagreen4', 'grey0')
                       , values = scales::rescale(c(50000, 100000, 500000, 1000000, 5000000))) +
  # get rid of background grid
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        panel.background = element_blank()) +
  labs(fill = '2021 GDP per Capita'
       , title = 'World Map of 2021 GDP'
       , subtitle = 'GDP per capita (current international $)')

ggplotly(gdp_map)
