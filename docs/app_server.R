# server.R
library(dplyr)
library(ggplot2)

# Data
medals_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")


# Source Functions
source('gdp map.R')
source('medals time frame.R')
source('big table.R')

# Server

server <- function(input, output) {
  
  
  
  output$map <- renderPlotly({
    
    return(build_map(input$map_year))
    
  })
  
  output$timeframe <- renderPlotly({
    
    return(build_timeframe(input$time_frame))
    
  })
  
  output$scatter <- renderPlotly({
    
    return(build_scatter(input$medals, input$GDP, input$region, input$olympic, input$usa))
    
  })
}