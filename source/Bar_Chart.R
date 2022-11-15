library(tidyverse)
library("ggplot2")
library(plotly)

# load data
olympic <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")

# filter dataframe
olympic <- olympic %>% 
  select(Team, Medal) %>% 
  filter(Medal == "Gold" | Medal == "Silver" | Medal == "Bronze") %>%
  group_by(Team) %>% 
  summarize(total_medals = n()) %>% 
  top_n(10, wt = total_medals)

top_performers <-ggplot(data = olympic) +
                    geom_col(mapping = aes(x = Team, y = total_medals), fill = "Purple") +
  
                    theme(panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank(),
                    panel.background = element_blank()) +
  
                    labs(title = 'Top 10 Countries in Overall Medals')

top_performers <- ggplotly(top_performers)

# I included this chart to visualize the top 10 performing countries (in medal count) over the course of Olympic history. 
# This chart can be used to quickly analyze locations around the world that perform best at the Olympics.
# The graphic reveals that the United States has the most medals of any country at 5219. 
# We can also see that they have about 2 times as many medals as the next best Olympic team. 
# Another observation we can make from the plot is that Europe seems to be the highest performing 
# continent in Olympic history. South America, Africa, and Asia are left out of the graphic entirely, 
# signaling to us that these continents have no Olympic powerhouses. 