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
- Our second dataset is entitled "2021 Olympics in Tokyo" which provides the overall medal count by country for the Summer Olympics that occurred in Tokyo 2021. Our previous dataset contains information through the prior Summer Olympics, Rio 2016, however due to the economic impact of the pandemic throughout 2020 and 2021, we thought it would be important to include an extra dataset for comparison in dominant countries after the pandemic as well. This will help with a more comprehensive analysis of our second research question because it will allow other factors to be considered in the relationship between GDP and Olympic success. This data was collected in 2021 and produced by the Tokyo Olympics 2020 website with the purpose of providing access to the results of the Olympics. The Olympics committee likely benefits and profits from this information as it helps them gain publicity as an already popular source, due to the popularity and reputation of this organization, this data is credible. We have also obtained this data from Kaggle which we have credited in our citations.
- Our final dataset is entitled “GDP per capita, PPP (current international $)” which provides an overview of each country's average GDP across the span of 31 years (1990-2021). This data provides the economic information needed for each country to complete the comparison between GDP and Olympic success, thus aiding our answers for all of the posed research questions. This data was collected by the World Bank, a reputable organization and it is updated annually leading us to believe that this data is credible. We have obtained this data straight from the [World Bank website] which has also been credited below in our citations.

| Dataset Name | Observations (Rows) | Variables (Columns) |
| ------------ | ------------------- | ------------------- |
| 120 Years of Olympic History: Athletes and Results | 271,116 | 15 |
| 2021 Olympics in Tokyo | 93 | 7 |
| GDP Per Capita, PPP (Current International $) | 260 | 32 |

##### *Expected Implications*

Our findings can have major implications for the future of Olympic performance. For a given nation's National Olympic Committee (the organization that oversees performance in each country), they may gain insight into which competitions give them the best chance to medal. For example, if we find countries with lower GDPs do best in swimming, the NOCs of those countries may invest millions into the development of swimmers. This may then lead to more competition in swimming. Another implication may be that of advertisers. Because an advertiser’s main goal is to draw eyes, they will be keen to find out which competitions the most wealthy nations do best in. Given we find how performance (and in turn viewership) is trending for a country, advertisers will use this data to make decisions on how to invest. For example, a Brazilian company may increase their advertisements in the sports Brazil is trending upwards in.

##### *Limitations*

Given available datasets, a limitation we might need to address is the lack of GDP data from 1896-1990 (our Olympic dataset includes these years). Because of this mismatch in years, we could do an analysis on medal count throughout this period (without GDP data) to account for the missing data. Another limitation we may need to address is that our GDP dataset is per capita. In our visualization, I imagine we will want to use total GDP at some point; to address this, we will need to account for population to reach this metric. A final limitation we may encounter is given the amount of data we have, can we reasonably reach valid conclusions or may they be a coincidence? This will be the main issue with our project; however, to address this we will run a number of tests on the datasets as a whole. Our sample sizes will be larger, and our data analysis will be comprehensive.

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
