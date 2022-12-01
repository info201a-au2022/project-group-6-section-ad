# ui.R
library(shiny)
library(plotly)
library(dplyr)
library(shinythemes)


# Tab Panel for Introduction
intro_panel <- tabPanel(
  "Introduction",
  titlePanel("Olympic Success vs. GDP Analysis"),
  p("WRITE INTRO PARAGRAPH")
)


# Year Choice Options
year_choices <- list(
  "2021" = "X2021",
  "2016" = "X2016",
  "2011" = "X2011",
  "2006" = "X2006",
  "2001" = "X2001"
)

# Side Bar Panel for Map
map_sidebar_content <- sidebarPanel(
  selectInput(
    "map_year",
    label = "Choose a Year",
    choices = year_choices,
    selected = year_choices[1]
  )
)

# Main Panel for Map
map_main_panel <- mainPanel(
  plotlyOutput("map")
)

# Tab Panel for Map
map_panel <- tabPanel(
  "GDP by Country",
  titlePanel("GDP by Country"),
  
  sidebarLayout(
    map_sidebar_content,
    map_main_panel
  )
)

# Side Bar Panel for Time Frame
time_frame_sidebar_content <- sidebarPanel(
  selectInput(
    "time_frame",
    label = "Choose a Country",
    choices = unique(medals_data$Team),
    selected = "United States"
  )
)

# Main Panel for Time Frame
time_frame_main_panel <- mainPanel(
  plotlyOutput("timeframe")
)

# Tab Panel for Time Frame
time_frame_panel <- tabPanel(
  "Medals",
  titlePanel("Medals Time Frame"),
  
  sidebarLayout(
    time_frame_sidebar_content,
    time_frame_main_panel
  )
)

# Tab Panel for Summary Takeaways
summary_panel <- tabPanel(
  "Summary",
  titlePanel("Summary Takeaways"),
  p("WRITE PARAGRAPH")
)

# Tab Panel for Report
report_panel <- tabPanel(
  "Report",
  titlePanel("Report"),
  p("WRITE PARAGRAPH")
)

# Navigation Bar
ui <- navbarPage(
  "Olympic Success",
  intro_panel, 
#  barchart_panel,
  map_panel,
  time_frame_panel,
  summary_panel,
  report_panel,
  theme = shinytheme("yeti")
)