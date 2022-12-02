# server.R
library(dplyr)

# Data
country_gdp <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/GDP_by_country.csv")
medals_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")

# Source Functions
source('../source/gdp map.R')
source('../source/medals time frame.R')

# Server

server <- function(input, output) {
  
  
  
  output$map <- renderPlotly({
    
    return(build_map(input$map_year))
    
  })
  
  output$timeframe <- renderPlotly({
    
    return(build_timeframe(input$time_frame))
    
  })
}