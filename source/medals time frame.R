# Medals won by the United States over the years.

#install.packages("hrbrthemes")

#libraries
library(ggplot2)
library(tidyverse)
library(dplyr)
library(plotly)
library(hrbrthemes)


# Load data set from github
data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")

build_timeframe <- function(country) {

  # Filter country and group by US and medals
  
  data <- data %>%
    filter(Team == country) %>%
    group_by(Year) %>%
    summarize(total_medals = n())
  
  # Usual area chart
  medals_US <- data %>%
    ggplot( aes(x=Year, y=total_medals)) +
    geom_area(fill="azure3", alpha = 0.5) +
    geom_line(color="azure4") +
    ylab("Total Medals") +
    labs( title = "Medals Won in the Olympics (1896-2016)")
    theme_ipsum()
  
  # Turn it interactive with ggploty
#  medals_US <- ggplotly(medals_US)
 # medals_US
    
    return(medals_US)
  
}  
  