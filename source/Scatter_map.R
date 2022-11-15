library(tidyverse)
library("ggplot2")

olympic <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-6-section-ad/main/data/Medals_count_tokyo.csv")

scatter_chart <- ggplot(data = olympic) +
  geom_point