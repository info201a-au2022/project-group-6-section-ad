# Medals won by the United States over the years.

#libraries
library(ggplot2)
library(tidyverse)
library(dplyr)
library(plotly)
library(hrbrthemes)
install.packages("hrbrthemes")

# Load data set from github
data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")

# Filter country and group by US and medals

data <- data %>%
  filter(Team == "United States") %>%
  group_by(Year) %>%
  summarize(total_medals = n())

# Usual area chart
medals_US <- data %>%
  ggplot( aes(x=Year, y=total_medals)) +
  geom_area(fill="blueviolet") +
  geom_line(color="cyan") +
  ylab("Total Medals") +
  labs( title = "Medals Won By the US in the Olympics")
  theme_ipsum()

# Turn it interactive with ggploty
medals_US <- ggplotly(medals_US)
medals_US
  