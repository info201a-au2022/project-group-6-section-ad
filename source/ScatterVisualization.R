library(tidyverse)
library(ggplot2)
library(plotly)


gdp_info <- read_csv("API_NY.GDP.PCAP.PP.CD_DS2_en_csv_v2_4701271.csv")
countryinformation <- read.csv("CountryInformation.csv")
colnames(gdp_info)[2] <- "NOC"

country_gdp <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/GDP_by_country.csv")
medals_data <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/athlete_events.csv")
countryinformation <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/CountryInformation.csv")

colnames(country_gdp)[2] <- "NOC"
colnames(countryinformation)[1] <- "NOC"

build_scatter <- function(usa, region, olympic, gdp, medals) {

  step_1 <- left_join(medals_data, countryinformation, by = "NOC")
  
  full_table <- left_join(step_1, country_gdp, by = "NOC") %>% 
    filter(Year > 1989) %>% 
    filter(!is.na(Medal)) %>% 
    select(-Season,-Sport,-Sex,-NOC,-Year,-Age,-TableName,-Height,-Weight,-ID,-Name,-City,-Event)  
  
  full_table <- full_table[,-5:-38]
  
  duplicate_edit <- full_table %>% 
    select(-Games,-Medal) %>% 
    unique()
  
  select_table <- full_table %>%
    group_by(Team, Games) %>% 
    summarize(gold_medals = sum(Medal == "Gold"),
              silver_medals = sum(Medal == "Silver"),
              bronze_medals = sum(Medal == "Bronze"))
  
  full_table <- select_table %>% 
    left_join(duplicate_edit, by = "Team")
  
  colnames(full_table)[9] <- "x1992"
  colnames(full_table)[10] <- "x1993"
  colnames(full_table)[11] <- "x1994"
  colnames(full_table)[12] <- "x1995"
  colnames(full_table)[13] <- "x1996"
  colnames(full_table)[14] <- "x1997"
  colnames(full_table)[15] <- "x1998"
  colnames(full_table)[16] <- "x1999"
  colnames(full_table)[17] <- "x2000"
  colnames(full_table)[18] <- "x2001"
  colnames(full_table)[19] <- "x2002"
  colnames(full_table)[20] <- "x2003"
  colnames(full_table)[21] <- "x2004"
  colnames(full_table)[22] <- "x2005"
  colnames(full_table)[23] <- "x2006"
  colnames(full_table)[24] <- "x2007"
  colnames(full_table)[25] <- "x2008"
  colnames(full_table)[26] <- "x2009"
  colnames(full_table)[27] <- "x2010"
  colnames(full_table)[28] <- "x2011"
  colnames(full_table)[29] <- "x2012"
  colnames(full_table)[30] <- "x2013"
  colnames(full_table)[31] <- "x2014"
  colnames(full_table)[32] <- "x2015"
  colnames(full_table)[33] <- "x2016"
  
  MedalsSelector <- colnames(full_table)[3:5]
  
  # Vector of regions
  regions_selector <- unique(full_table$Region, na.rm = TRUE)
  regions_selector <- regions_selector[!is.na(regions_selector)]
  
  # Vector of olympic games
  olympics_selector <- unique(full_table$Games)
  olympics_selector <- sort(olympics_selector)
  
  if (usa == FALSE) {
    full_table <- full_table %>% 
      filter(Team != "United States",
             Team != "United States-1",
             Team != "United States-2")
  }
  
  full_table <- full_table %>% 
    dplyr::filter(Region %in% region) %>% 
    dplyr::filter(Games %in% olympic)
  
  plot <- ggplot(full_table) + 
    geom_point(mapping = aes_string(x = gdp, y = medals), size = 3) +
    #scale_color_manual(values=c("red", "blue", "green", "yellow", "orange", "purple", "black")) +
    labs(x = paste(substr(gdp, 2, 5), "GDP"),
         y = "Medal Count") +
    theme(
      axis.title.x = element_text(color = "#0099f9", size = 16, face = "italic", margin = margin(t = 3)),
      axis.title.y = element_text(color = "#0099f9", size = 16, face = "italic")
    )
  return(plot)

}









