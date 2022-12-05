# ui.R
library(shiny)
library(plotly)
library(dplyr)
library(shinythemes)
library(png)


# Tab Panel for Introduction
intro_panel <- tabPanel(
  "Introduction",
  titlePanel(strong("Olympic Success vs. GDP Analysis")),
  p(style = "font-size:20px",
    align = "center",
  "The Olympics are the ultimate measure of a nation's best athletes. Lifetimes of training and dedication are spent by 
  individuals attempting to win medals. However, with the same countries typically reaching the top of the medal counts, 
  many fans point to money as the main driver for success. 
  Our project aims to explore this relationship; specifically, we will examine the effects of GDP on Olympic success. 
  This is an important insight for Olympics committees, advertisers, etc., as there are billions of dollars on the line at the 
  Olympic games, as well as indescribable fame and recognition. Our project will also analyze the effects of GDP on different aspects of the 
  Olympics, such as historic trends, where correlation is strongest, and how performance is affected in the modern day. 
    To add on to this, we hope to transform our data analysis into visualizations that are informative, as well interactive."),
  
  h1(strong("Abstract")),
  p(style = "font-size:20px",
  align = "center",
  "Our main question is, 'How does wealth affect Olympic performance?' This question is important because wealth inequality is 
  arguably the largest factor 
  in global politics, and a controversial issue. To address this question, 
  we will examine how this inequality translates to sports on the world's grandest stage. We are also concerned 
  with how specific sports/athletes are affected by countrywide wealth; to address this concern, 
    we plan to perform comprehensive data analysis on 30+ years of Olympic and GDP history."),
  br(),

  tags$figure(
    align = "center",
    tags$img(
      src = "olympic_medals.jpg",
      width = 500,
      alt = "The Olympic Medals"
    ),
    tags$figcaption("The Olympic Medals")
  )
    
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

# Side Bar Panel for Time Frame
scatter_sidebar_content <- sidebarPanel(
  # X Axis
  selectInput(
    "GDP",
    label = "GDP Year",
    choices = list(
      "2016" = "x2016",
      "2014" = "x2014",
      "2012" = "x2012",
      "2010" = "x2010",
      "2008" = "x2008",
      "2006" = "x2006",
      "2004" = "x2004",
      "2002" = "x2002",
      "2000" = "x2000",
      "1998" = "x1998",
      "1996" = "x1996",
      "1994" = "x1994",
      "1992" = "x1992"
    ),
    selected = "2016",
  )
)

# Main Panel for Time Frame


# Tab Panel for Scatter Plot
scatter_plot_panel <- tabPanel(
  "Medals vs GDP",
  titlePanel("Worldwide Medals vs GDP"),
  scatter_sidebar_content,
  p("Graph")
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
  titlePanel(strong("Olympic Medals by")),
  p("WRITE PARAGRAPH")
)

# Navigation Bar
ui <- navbarPage(
  "Olympic Success",
  intro_panel, 
#  barchart_panel,
  map_panel,
  time_frame_panel,
  scatter_plot_panel,
  summary_panel,
  report_panel,
  theme = shinytheme("darkly")
)