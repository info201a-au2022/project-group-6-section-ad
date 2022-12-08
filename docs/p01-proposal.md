# Project Proposal: How Wealth Affects Olympic Performance
## Code Name: Tokyo 2021
### Authors: Annabelle Haryanto (ayna27@uw.edu), Ethan Hsu (ehsu7@uw.edu), Kassy Chaput (kassyc2@uw.edu)
#### Affiliation: INFO-201: Technical Foundations of Informatics - The Information School - University of Washington
##### Date: Autumn 2022


##### *Abstract*
Our main question is, "How does wealth affect Olympic performance?" This question is important because wealth inequality is arguably the largest factor in global politics, and a controversial issue. To address this question, we will examine how this inequality translates to sports on the world's grandest stage. We are also concerned with how specific sports/athletes are affected by countrywide wealth; to address this concern, we plan to perform comprehensive data analysis on 30+ years of Olympic and GDP history.

##### *Keywords*
- Olympic Performance
- Gross Domestic Product (GDP)
- Medal Count
- Historic Trends

##### *Introduction*
The Olympics are the ultimate measure of a nation's best athletes. Lifetimes of training and dedication are spent by individuals attempting to win medals. However, with the same countries typically reaching the top of the medal counts, many fans point to money as the main driver for success. Our project aims to explore this relationship; specifically, we will examine the effects of GDP on Olympic success. This is an important insight for Olympics committees, advertisers, etc., as there are billions of dollars on the line at the Olympic games, as well as indescribable fame and recognition. Our project will also analyze the effects of GDP on different aspects of the Olympics, such as historic trends, where correlation is strongest, and how performance is affected in the modern day. To add on to this, we hope to transform our data analysis into visualizations that are informative, as well interactive.

##### *Problem Domain*

The Olympic games are one of the most important games for countries, it occurs once in 4 years. There are two types, winter and summer. The Olympic games consists of many varieties of sports and most countries invest a tremendous amount of money into their country’s athletes. According to the [article] in Forbes written by Brett Knight, Knight mentions that in the last winter Olympic games that was held in Beijing 2022, Italy won 17 gold medals and the Italian athletes got $201,000 each for every gold medal they won. Knight provided a table based on the medal bonus spending by countries and Italy was giving out the largest amount of money to their athletes.

We are trying to find out how a countries’ GDP affects the success of winning the most medals in the Olympic games over time. We believe that countries with higher GDP are able to win more medals as they have more access to resources (i.e. money) to deeply invest in training facilities, the best coaches and also even provide athletes with big payouts so that they are more motivated to win more gold medals. Wining the most gold medals in the Olympics provides the country with more global recognition and “good” reputation.

Direct stakeholder for our research would be the country itself. They are the ones who provide everything for their athletes in order for them to represent their home country in the Olympics. In order for a country to join the Olympics, the country needs a National Olympic Committee (NOC) that is recognized by the International Olympic Committee (IOC). We personally think that a countries’ GDP affects the success in winning the most gold medals because as we have mentioned before richer countries are able to provide a “better” training facility for their athletes.

Indirect stakeholders for our research would be the athletes themselves or maybe even their citizens. As they are indirectly involved in the Olympic games. Mostly developed countries are the ones who are able to afford to host the Olympic games. According to McBride and Manno, many cities invest millions of dollars in evaluating, preparing, and submitting a bid to the IOC. Tokyo, Japan bidded $150 million and failed in 2016. This shows how much countries are willing to invest. The possible harm is that we think that countries who do not get winter are not able to gain the advantage to win. The possible benefit for countries is that they are able to get recognition globally.


##### *Research Questions*

1. Our initial research question posed is: Is there a positive correlation between a countries' GDP and their overall medal count in the Olympics? This question is motivated by the fact that many other aspects of success in other areas tend to have a close relationship tied with the amount of money a certain entity has, thus we believe that the countries with a higher GDP will be able to produce a higher medal count.
2. The next question we have is: How has this relationship between GDP and Olympic medal count changed over time? This goes hand in hand with our initial question because the economy likely has a huge influence now, but it is important to investigate if this has always been the case or if there were ever a time when it appears the economy did not have an impact.
3. Our final question is to investigate of GDP appears to impact the Winter or Summer Olympics more. This is also crucial because it may show other confounding variables involved in Olympic success such as the location of a country or a specialization/emphasis on a particular event as opposed to simply believing success was due to GDP alone.

##### *The Dataset*

- Our first dataset is entitled "120 Years of Olympic History: Athletes and Results" which provides an overall general summary of every athlete that has competed in the Olympics ranging from Athens 1896 to Rio 2016. This serves a crucial purpose to analyze how the Olympics have changed over time in regard to medal count for each country. This will help to analyze the second research question posed because the vast range of dates included in this dataset will provide a broad picture of how things have changed over such a vast period. This data was collected by sports-reference.com because of an enthusiasm for the Olympics. We have obtained this data through Kaggle, a web-based dataset environment from the author "rgriffin" who created this dataset to make observations and distinguish patterns about the Olympics over time.
- Our second dataset is entitled “Country Information” which provides a brief overview of each country in our project, along with the region in which it is located, its respective country code and its categorized income group. This is crucial to our overall analysis and second research question in particular because when grouped with our first dataset it provides excellent potential for creation of a visualization about which countries perform better in comparison to which countries have a higher income group. Similarly to our next dataset, this was collected by the World Bank thus leading us to believe this is a credible source due to it having a well-known and reliable reputation.
- Our final dataset is entitled “GDP per capita, PPP (current international $)” which provides an overview of each country's average GDP across the span of 31 years (1990-2021). This data provides the economic information needed for each country to complete the comparison between GDP and Olympic success, thus aiding our answers for all of the posed research questions. This data was collected by the World Bank, a reputable organization and it is updated annually leading us to believe that this data is credible. We have obtained this data straight from the [World Bank website] which has also been credited below in our citations.

| Dataset Name | Observations (Rows) | Variables (Columns) |
| ------------ | ------------------- | ------------------- |
| 120 Years of Olympic History: Athletes and Results | 271,116 | 15 |
| Country Information | 195 | 7 |
| GDP Per Capita, PPP (Current International $) | 260 | 32 |

##### *Expected Implications*

Our findings can have major implications for the future of Olympic performance. For a given nation's National Olympic Committee (the organization that oversees performance in each country), they may gain insight into which competitions give them the best chance to medal. For example, if we find countries with lower GDPs do best in winter olympics, the NOCs of those countries may invest millions into the development of winter athletes. This may then lead to more competition in qualifying for the winter olympics. Another implication may be that of advertisers. Because an advertiser’s main goal is to draw eyes, they will be keen to find out which competitions the most wealthy nations do best in. Given we find how performance (and in turn viewership) is trending for a country, advertisers will use this data to make decisions on how to invest. For example, a Brazilian company may increase their advertisements in the sports Brazil is trending upwards in.

##### *Limitations*

Given available datasets, a limitation we might need to address is the lack of GDP data from 1896-1990 (our Olympic dataset includes these years). Because of this mismatch in years, we could do an analysis on medal count throughout this period (without GDP data) to account for the missing data. Another limitation we may need to address is that our GDP dataset is per capita. In our visualization, I imagine we will want to use total GDP at some point; to address this, we will need to account for population to reach this metric. A final limitation we may encounter is given the amount of data we have, can we reasonably reach valid conclusions or may they be a coincidence? This will be the main issue with our project; however, to address this we will run a number of tests on the datasets as a whole. Our sample sizes will be larger, and our data analysis will be comprehensive.

##### *Findings*

Our 3 initial questions before starting this assignment were “Does a positive correlation between a countries’ GDP and their overall medal count at the Olympics exist?”, “How has this relationship between GDP and Olympic medal count changed over time?” and “Our final question is to investigate if GDP appears to impact the Winter or Summer Olympics more?”. As we dive deeper into our research we found that there is a positive correlation between a countries’ GDP and their overall medal count at the Olympics does truly exist as countries with high GDP are more likely to win more medals. This is simply because they are able to provide their athletes with the best training, they are willing to invest deeply in them which means that the country truly cares and supports their respective athletes.
Also countries with all 4 seasons may likely win most medals as they have the facility and the opportunity to conduct both summer and the winter Olympics. Throughout our research, we have also found that the level of income of each athlete impacts the success of their ability to gain the medals. Athletes with higher income are highly likely to win more medals than those with lower income as they might not be exposed to a better training system towards the Olympics.
Although countries with higher GDP are more likely to win more medals, countries with lower GDP are also able to win medals but not as much. The Olympic is a very competitive sport for athletes and it will still remain tough to succeed whether it is in the Summer or Winter as they are both equally tough. Hard work and dedication is very important if they want to succeed in winning more medals.
Money plays a big factor in the Olympics as spending on these Olympic athletes is relatively expensive. Countries with higher GDP are able to budget more of their spending on them as they are able to allocate their spending more on them. Take the U.S. in 1980, their medal count dropped significantly due to the economic recession. This evidently shows us how the GDP affects the Olympics. Lastly, we could say that it depends on the country. We feel that countries with all 4 seasons are able to benefit greatly from this because the resources for them to train are available and tropical countries are not exposed to the winter weather. To succeed in the Olympics is tough, with the right skill and determination, the country will then be able to compete and succeed.

##### *Discussion*

Based on our findings, there are a number of implications for athletes, Olympic officials, and advertisers. For athletes, their respective country of representation may be directly affected by our data. In nations where it is hyper competitive just to qualify, there are likely a number of quality athletes who miss out on the competition even though they are of olympic standard. A similar phenomenon exists in other international competitions such as the FIFA World Cup, where players who do not make the Brazilian team (for example) choose to represent their parent’s birth country. Athletes may even go as far as gaining citizenship in another nation so that they may compete for that nation. With our findings, athletes on the bubble of qualifying may choose to represent a country with lower GDP per capita, as these nations generally perform worse at the Olympics. Winter sport athletes on the bubble may also choose to compete for nations that do not experience all four seasons as they have the highest chance to qualify in these countries. As for advertisers, money is the main factor involved. Based on our findings, Olympic teams from nations with higher GDPs will likely have the highest price tag for their sponsorship rights as these teams draw the most eyes with their success. In particular, the region “Europe & Central Asia” will have the most expensive sponsorship rights as these nations historically have the highest medal counts, GDP per capita, and performance for countries with lower GDP per capita. At the winter olympics, the effect of GDP per capita on sponsor price is even larger as this factor impacts medal count more than the summer olympics. Finally, Olympic officials would be keen to learn our findings. Since we learned Olympic success is heavily dependent on countrywide development, decision makers must be clever in where they place their investment. In nations that do not experience a “true winter,” officials may learn that it is a much better investment to allocate money towards the summer games as success is more likely. Since medal counts in lower GDP nations are generally low to begin with, Olympic committees in these countries may centralize their investment in specific sports. This will ensure resources are not spread thin and give them the best chance to compete with higher GDP per capita nations. In Jamaica, we see this happening with track, which has led to olympic prominence for the island nation. In terms of recruiting talent, these teams may also look abroad to increase chances of success in future games.


##### *Conclusions*

In conclusion, we would like to emphasize the key takeaway that the results from these findings are also applicable in other areas. GDP and wealth do not only impact the Olympics, but also a wide variety of activities and events. It also serves the purpose to show that despite the Olympics conducting a series of other preventative measures to discourage athletes from having an advantage (such as drug testing, etc.) there remains other confounding variables that leave some teams/athletes with an advantage over others. This is crucial to show that success is made up of multiple aspects and cannot be solely attributed to one thing or another, but rather a combination of many factors. This project displays a correlation between the GDP of a country and their Olympic success in a certain year to make this point evident, that Olympic achievement involves multiple confounding variables. It is also important to understand that the impact of GDP happens on a much higher level as it is out of the athlete’s control how much money their respective country makes. However, this same idea can be applied on a much lower level, as further analysis of each athlete’s financial status may perhaps reveal somewhat similar patterns, those with more money and more access to various resources are likely to have a higher success rate than those with a lower income. Based on these factors presented, among many others, it would be difficult and nearly impossible to design a competition where the playing field is completely equal, and all athletes have a chance for success regardless of financial status. Although this is not intended to take away from the hard work still needed for success in the Olympics, it simply adds another factor to consider when looking at the overall success of certain countries or individual athletes. Nonetheless, Olympic success remains a difficult task to achieve with much skill required, however, this analysis has shown that other factors not usually tested for have been shown to have a correlation with winning in the Olympics.

##### *Acknowledgments*

We as a group are grateful to all of those with whom we have had the pleasure to work during this website and research projects. We would like to say thank you to our TA, Yubing Tian (insert smiley emoji) as she helped us resolve numerous coding problems as well as further explaining to us what the prompt meant. We are grateful amongst ourselves as well because we are able to get together to resolve each other's issues. And also that there was good communication amongst ourselves so that we are not behind on any group project assignments.

##### *References/Citations*

rgriffin and www.sports-reference.com, “120 years of Olympic history: athletes and results” (May 2018),
https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results?resource=download

Tokyo Olympics 2020 Website, “2021 Olympics in Tokyo” (2021),
https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo

World Bank, “GDP per capita, PPP (current international $)” (Updated annually),
https://data.worldbank.org/indicator/NY.GDP.PCAP.PP.CD

Knight, B. (2020, February 20). Many Countries Pay Big Bonuses For Olympic Medals. This One Is Shelling Out $2.7 Million. Forbes.
https://www.forbes.com/sites/brettknight/2022/02/20/many-countries-pay-big-bonuses-for-olympic-medals-this-one-is-shelling-out-27-million/?sh=89fe866283b6

McBride and Manno. (2021, December 14). The Economic of Hosting the Olympic Games. Council on Foreign Relations.
https://www.cfr.org/backgrounder/economics-hosting-olympic-games

[article]: https://www.forbes.com/sites/brettknight/2022/02/20/many-countries-pay-big-bonuses-for-olympic-medals-this-one-is-shelling-out-27-million/?sh=77da67266283

[World Bank website]: https://data.worldbank.org/indicator/NY.GDP.PCAP.PP.CD
