# ui.R
library(shiny)
library(plotly)
library(dplyr)
library(shinythemes)
library(shinyWidgets)
library(devtools)


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
  tags$figure(
    align = "center",
    tags$img(
      src = "olympic_medals.jpg",
      width = 500,
      alt = "The Olympic Medals"
    ),
    tags$figcaption("The Olympic Medals")
  ),
  
  h1(strong("Abstract")),
  br(),
  p(style = "font-size:20px",
    align = "center",
    "Our main question is, 'How does wealth affect Olympic performance?' This question is important because wealth inequality is 
  arguably the largest factor 
  in global politics, and a controversial issue. To address this question, 
  we will examine how this inequality translates to sports on the world's grandest stage. We are also concerned 
  with how specific sports/athletes are affected by countrywide wealth; to address this concern, 
    we plan to perform comprehensive data analysis on 30+ years of Olympic and GDP history."),
  br(),
  h1(strong("Problem Domain")),
  
  br(),
  
  p(style = "font-size:20px",
    "The Olympic games are one of the most important games for countries, it occurs once in 4 years. There are two types, winter and summer. The Olympic games consists of many varieties of sports and most countries invest a tremendous amount of money into their country’s athletes. According to the article in Forbes written by Brett Knight, Knight mentions that in the last winter Olympic games that was held in Beijing 2022, Italy won 17 gold medals and the Italian athletes got $201,000 each for every gold medal they won. Knight provided a table based on the medal bonus spending by countries and Italy was giving out the largest amount of money to their athletes."
    ),
    
  p(style = "font-size:20px", 
    "We are trying to find out how a countries’ GDP affects the success of winning the most medals in the Olympic games over time. We believe that countries with higher GDP are able to win more medals as they have more access to resources (i.e. money) to deeply invest in training facilities, the best coaches and also even provide athletes with big payouts so that they are more motivated to win more gold medals. Wining the most gold medals in the Olympics provides the country with more global recognition and 'good' reputation."
    ),
    
  p(style = "font-size:20px",
    "Direct stakeholder for our research would be the country itself. They are the ones who provide everything for their athletes in order for them to represent their home country in the Olympics. In order for a country to join the Olympics, the country needs a National Olympic Committee (NOC) that is recognized by the International Olympic Committee (IOC). We personally think that a countries’ GDP affects the success in winning the most gold medals because as we have mentioned before richer countries are able to provide a “better” training facility for their athletes."
    ),
    
  p(style = "font-size:20px",
    "Indirect stakeholders for our research would be the athletes themselves or maybe even their citizens. As they are indirectly involved in the Olympic games. Mostly developed countries are the ones who are able to afford to host the Olympic games. According to McBride and Manno, many cities invest millions of dollars in evaluating, preparing, and submitting a bid to the IOC. Tokyo, Japan bidded $150 million and failed in 2016. This shows how much countries are willing to invest. The possible harm is that we think that countries who do not get winter are not able to gain the advantage to win. The possible benefit for countries is that they are able to get recognition globally."
    ),
  
  br(),
  h2(strong("Research Question")),
  br(),
  p(style = "font-size:20px",
     "1. Does a positive correlation between a countries' GDP and their overall medal count at the Olympics exists?"
    ),
  p(style = "font-size:20px",
    "2. How has this relationship between GDP and Olympic medal count changed over time?"
    ),
  p(style = "font-size:20px",
    "3. Does the GDP appears to impact the Winter or Summer Olympics more?"
    ),
  tags$figure(
    align = "center",
    tags$img(
      src = "olympic_torch.jpg",
      width = 500,
      alt = "The Olympic Medals"
    ),
    tags$figcaption("The Olympic Torch")
  ),  

  h2(strong("Data")),
  br(),
  p(style = "font-size:20px",
    "Our first dataset is entitled “120 years of Olympic history: athletes and results” which provides an overall general summary of every athlete that has competed in the Olympics ranging from Athens 1896 to Rio 2016. This serves a crucial purpose to analyze how the Olympics have changed over time in regard to medal count for each country. This will help to analyze the second research question posed because the vast range of dates included in this dataset will provide a broad picture of how things have changed over such a vast period. This data was collected by sports-reference.com because of an enthusiasm for the Olympics. We have obtained this data through Kaggle, a web-based dataset environment from the author rgriffin who created this dataset to make observations and patterns about the Olympics clear over time."
    ),
  p(style = "font-size:20px",
    "Our second dataset is entitled “Country Information” which provides a brief overview of each country in our project, along with the region in which it is located, its respective country code and its categorized income group. This is crucial to our overall analysis and second research question in particular because when grouped with our first dataset it provides excellent potential for creation of a visualization about which countries perform better in comparison to which countries have a higher income group. Similarly to our next dataset, this was collected by the World Bank thus leading us to believe this is a credible source due to it having a well-known and reliable reputation."
    ),
  p(style = "font-size:20px",
    "Our final dataset is entitled “GDP per capita, PPP (current international $)” which provides an overview of each country's average GDP across the span of 31 years (1990-2021). This data provides the economic information needed for each country to complete the comparison between GDP and Olympic success, thus aiding our answers for all of the posed research questions. This data was collected by the World Bank, a reputable organization and it is updated annually leading us to believe that this data is credible. We have obtained this data straight from the World Bank website which has also been credited below in our citations."
    ),
  br(),
  
  
  
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
  ),
  p("This map is included to visualize the Gross Domestic Product (GDP) per capita by
    each country from data collected at the end of 2021. This can be used to achieve
    a broad overview of the economy in every country across the world. The countries
    with the darkest green color have the highest GDP such as the United States,
    Australia, and a few countries in Europe. Those with a lighter green color have a
    lower GDP production such as many of the countries in both Africa and South America.
    The countries with high GDP (darker color) can also further be compared to the bar
    chart below to help determine if a correlation between high GDP and Olympic success
    exists.")
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
   ),
   sidebarPanel(
     p("This interactive time frame shows the number of medals won by each country."),
     p("As seen from the previous two data visualizations, the United States is among the top in both GDP production and Olympic success, this time graph goes further in depth tracking the United States' Olympic success over time. This reveals that the United States has had relatively stable success in the Olympics until 1980. After 1980, the United States has had varied success, some years total medal count is nearly 750, where as others it is closer to 250. This difference may be due to the Olympics being held every 2 years and staggering Winter and Summer Olympics after 1986. We can see that in the year 1992, the United States won the most medals and after that, the graph fluctuates over the years until 2016."
       )
   )
 )

# Side Bar Panel for Scatter Plot
scatter_sidebar_content <- sidebarPanel(
  # Y Axis
  radioButtons(
    "medals",
    label = "Medals",
    choices = list(
      "Gold" = "gold_medals",
      "Silver" = "silver_medals",
      "Bronze" = "bronze_medals"
    ),
    selected = "bronze_medals",
  ),
  
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
  ),
  
  # Region Selector
  region_input <- checkboxGroupInput(
    "region",
    label = "Global Region",
    choices = regions_selector,
    selected = "Europe & Central Asia",
  ),
  
  # Olympics Selector
  olympic_input <- selectInput(
    "olympic",
    label = "Olympics",
    choices = olympics_selector,
    selected = "2016 Summer",
  ),
  
  # USA Selector
  usa_input <- checkboxInput(
    "usa",
    label = "Include United States",
    value = TRUE
  )
)

# Main Panel for Scatter
scatter_panel <- mainPanel(
  plotlyOutput("scatter"),
  br(),
  p(style = "font-size:20px",
    "The purpose of this scatter plot is to display the relationship between a nation’s medal count and GDP per capita. 
    This allows us to analyze the correlation between these two variables. A user can specify the  region(s) they want 
    to display, the GDP year, medal type, and the olympic games. Whether to include the U.S. is also an option as the 
    American’s high medal count can distort the plot. Overall, a positive slope indicates that there is a positive correlation 
    between GDP per capita and medal count. A negative slope indicates a negative correlation, and neither indicates no correlation. 
    Through clicking the various widgets, we can see that countries from the region “Europe & Central Asia” generally have both the 
    highest GDP per capita and high medal count.")
)

# Tab Panel for Scatter Plot
scatter_plot_panel <- tabPanel(
  "Medals vs GDP",
  titlePanel("Worldwide Medals vs GDP"),
  scatter_sidebar_content,
  scatter_panel
)


 
 # Tab panel for Summary
 summary_panel <- tabPanel(
   "Summary",
   titlePanel("Summary Takeaways"),
   p(style = "font-size:15px",
     "Our 3 initial questions before starting this assignment were “Does a positive correlation between a countries’ GDP and their overall medal count at the Olympics exist?”, “How has this relationship between GDP and Olympic medal count changed over time?” and “Our final question is to investigate if GDP appears to impact the Winter or Summer Olympics more?”. As we dive deeper into our research we found that there is a positive correlation between a countries’ GDP and their overall medal count at the Olympics does truly exist as countries with high GDP are more likely to win more medals. This is simply because they are able to provide their athletes with the best training, they are willing to invest deeply in them which means that the country truly cares and supports their respective athletes."
   ),
   br(),
   p(style = "font-size:15px",
     "Also countries with all 4 seasons may likely win most medals as they have the facility and the opportunity to conduct both summer and the winter Olympics. Throughout our research, we have also found that the level of income of each athlete impacts the success of their ability to gain the medals. Athletes with higher income are highly likely to win more medals than those with lower income as they might not be exposed to a better training system towards the Olympics."
   ),
   br(),
   p(style = "font-size:15px",
     "Although countries with higher GDP are more likely to win more medals, countries with lower GDP are also able to win medals but not as much. The Olympic is a very competitive sport for athletes and it will still remain tough to succeed whether it is in the Summer or Winter as they are both equally tough. Hard work and dedication is very important if they want to succeed in winning more medals."
   ),
   br(),
   p(style = "font-size:15px",
     "Money plays a big factor in the Olympics as spending on these Olympic athletes is relatively expensive. Countries with higher GDP are able to budget more of their spending on them as they are able to allocate their spending more on them. Take the U.S. in 1980, their medal count dropped significantly due to the economic recession. This evidently shows us how the GDP affects the Olympics. Lastly, we could say that it depends on the country. We feel that countries with all 4 seasons are able to benefit greatly from this because the resources for them to train are available and tropical countries are not exposed to the winter weather. To succeed in the Olympics is tough, with the right skill and determination, the country will then be able to compete and succeed."
   ),
 )
 
 # Tab Panel for Report
 report_panel <- tabPanel(
   "Report",
   tags$figure(
     align = "center",
     tags$img(
       src = "olympic_rings.jpg",
       width = 500,
     ),
     tags$figcaption("The Olympic Logo")
   ),
   titlePanel(strong("Olympic Medals Report")),
   p(style = "font-size:15px",
     "This project displays a correlation between the GDP of a country and their Olympic success in a certain year. It also serves the purpose to show that despite the Olympics conducting a series of other preventative measures to discourage athletes from having an advantage. There remains other confounding variables that leave some teams/athletes with an advantage over others."
   ),
   sidebarLayout(
     position = "left",
     sidebarPanel(
       h4(strong("About Us")),
       p("Special thanks to projects members for allocating resources and using R to create this amazing project overviewing how the GDP impacts the Olympic games."),
       p("Annabelle Haryanto"),
       p("Ethan Hsu"),
       p("Kassy Chaput"),
 
     ),
     mainPanel()
   ),
   sidebarLayout(
     position = "left",
     sidebarPanel(
       h4(strong("Acknowledgements")),
       p("We as a group are grateful to all of those with whom we have had the pleasure to work during this website and research projects. We would like to say thank you to our TA, Yubing Tian
         as she helped us resolve numerous coding problems as well as further explaining to us what the prompt meant. We are grateful amongst ourselves as well because we are able to get together to resolve each other's issues. And also that there was good communication amongst ourselves so that we are not behind on any group project assignments."
         ),
     ),
    mainPanel()
   )
)


# Navigation Bar
ui <- navbarPage(
  "Olympic Success",
  intro_panel,
  map_panel,
  time_frame_panel,
  scatter_plot_panel,
  summary_panel,
  report_panel,
  theme = shinytheme("superhero")
)