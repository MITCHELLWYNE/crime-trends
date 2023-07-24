# An Analysis of Crime in San Francisco and Baltimore

## Goal

Sports Fans LLC has the goal of opening at least one location in every city with a major sports team. While they are opening up multiple stores this year, their team has some concerns about the stores that will be opening up in San Francisco and Baltimore as those cities have been making headlines for rampant crime as of late. The goal of this report is to provide a comprehensive analysis of crimes within both cities that identifies trends and patterns so that the company can make an informed decision when deciding on a location within the cities. 

## Approach

- Collect Data
    - SF Crime dataset: [SF Crime](https://data.sfgov.org/Public-Safety/Police-Department-Incident-Reports-2018-to-Present/wg3w-h783)
        - Documentation on dataset (includes description of dataset as well as relevant terminology): [SF Crime Documentation](https://datasf.gitbook.io/datasf-dataset-explainers/sfpd-incident-report-2018-to-present)
    - Baltimore Dataset: [Baltimore Crime](https://data.baltimorecity.gov/datasets/baltimore::part-1-crime-data/about)
- Clean Data
- Create Database
- Visualize data
- Create models to predict trends

## Relevant Information

While the data sets used were very similar, there were some key differences. The Baltimore data set only included major crimes, while the San Francisco data set included all reported incidents. 

Major (Part 1) crimes are defined as against persons includinghomicide, shooting, robbery, aggravated assault etc. within the City of Baltimore. Data for the Baltimore dataset is updated weekly.

The San Francisco dataset includes incident reports that have been filed as of January 1, 2018 to present. 
These reports are filed by officers or self-reported by members of the public using SFPD’s online reporting system, then they are reviewed and approved by a Sergeant or lieutenant.

## Findings
The San Francisco dataset only contained information from 2018-present while the Baltimore data set included information from the 2000s to present. For the sake of consistency, visuals have been filtered to include data only from 2018 onward for both sets. Additionally, most visuals focus on the top 10 crime categories per city that would be relevant to a retail store. These modifications exclude unnecessary information in order to provide more precise insight.

Please visit the linked Crime stories for interactive crime statistics. 

### Baltimore

[Link to Baltimore Tableau Crime Story](https://public.tableau.com/app/profile/melissa.madera/viz/shared/KNHQDG4GK)

First, we wanted to provide a quick consumer profile for the city of Baltimore. This data is also derived from the 2020 census and is publicly available [Link to Baltimore Consumer Profile](https://datausa.io/profile/geo/baltimore-md/). Baltimore has seen a decline in population, but an increase in median household income. Although Baltimore has seen a decline in the poverty rate, it is still quite high at 20%. The employed population is less than half of the total population. Despite these facts, according to a recent report in the Baltimore Business Journal, the city does still rank in the top 50 of the best cities for sports business [Link to Baltimore Business Journal Article](https://www.bizjournals.com/baltimore/news/2023/03/20/baltimore-best-sports-business-cities.html). 

Overall, 5 categories of crime are most prevelant in Baltimore. Larceny reigns supreme with common assault, aggrevated assault, burglary, and robbery following. With high rates of major crimes proportionately, we strongly recommend proactive security and loss prevention plans on-site.  

Crime over time in Baltimore from 2018 to 2023 follows an expected pattern surrounding COVID-19 years. Crime began to decline at the end of 2019 and fully dipped in 2020. It slowly began to rebound in 2021 and is expected to be on par with pre-COVID levels by the end of the year. 

A look at day-to-day crime provides a bleak picture. There is not much variation in crime averages by day of the week. Sunday is the least crime ridden day of the week. The reprieve from the Lord’s day is short lived as Monday takes the number two spot on the list, falling only behind Friday. That being said, crime does not appear to significantly discriminate against any day of the week. Taking a look at crime by the hour, we see peak hours for crime are roughly between noon and midnight. There is a dip in the wee hours of the morning, which swiftly rises as businesses begin to open. Notably, there does appear to be a spike at lunch time, with a slight reprieve in the next couple of hours that follow, only to peak again in the early evening and staying relatively steady until those early morning hours. 

As far as crime by neighborhood goes, Downtown appears to be the most crime ridden neighborhood in Baltimore. Frankford, Belair-Edison, and Brooklyn have moderate crime rates, and all others have considerably lower rates of major crimes. 

### San Francisco

[Link to San Francisco Tableau Crime Story](https://public.tableau.com/app/profile/ariel.lin2108/viz/Project4SFCrime/SanFranciscoCrimeStory)

Before jumping into crime statistics, we wanted to provide an overview of a consumer profile for San Franciscans. This information is derived from the 2020 census and is publicly available [Link to SF Consumer Profile](https://datausa.io/profile/geo/san-francisco-ca). Notably, San Francisco has had a slight population decline, but boasts one of the nation’s highest median incomes coupled with a 10.1% poverty rate and a largely employed population (about 60% employed). The city is a juxtaposition of high income and high crime rates.

Since the San Francisco dataset included all reported incidents and not solely major crimes, we first wanted to provide an overview of all the types of incidents reported in the city. We then wanted to provide a more narrowed insight into the top 10 crimes most likely to impact a retail location. Larceny Theft far outweighs the instances of all other crimes. The next highest ranking relevant incidents included malicious mischief, assault, nurglary, warrant, drug offense, robbery, missing person, suspisious occasion, and disorderly conduct. Again it is important to note that the San Francisco dataset included all reported instances not just major crimes. While this may inflate the overall numbers, we felt it would provide a thorough glimpse into what a retail location should expect. It is evident a security and loss prevention team will be a necessity for this location.  

Taking look at crime by year in San Francisco, much of the same patterns observed in the Baltimore dataset were found. Notably, during COVID, there was a clear dip in crime correlating to lock down measures. Post COVID, crime rates are slowly rising back to pre-COVID ranges. In 2023, with a little over half of the year past, rates are at about half of the total pre-COVID level, suggesting that crime will be back on par if not higher than pre-covid years by year-end. 

Our next question to tackle was “What does crime look like on a day-to-day basis in San Francisco?” Crime is unavoidable in San Francisco, but on average, Sunday is the least crime filled day, while Friday and Wednesday are the worst. Peak crime hours are roughly between noon to 9 pm. 

For anyone familiar with San Francisco this next portion is not going to be all that surprising. When looking at crime by neighborhood, it is evident that Mission and the Tenderloin have the most crime. South of Market and the Financial District are not far behind. Bayview is moderate by San Francisco standards, and all the other neighborhoods have considerably less crime than the top 5. 

## Machine Learning Models

The goal of our models was to predict the best location for a new store based on safety. To do so, we utilized random forest models. This model was chosen because it seemed like the best fit for our goal. Random forest models are based off of the concept of decision trees, but offer improved accuracy and reduction of overfitting by combining multiple decision trees into one model. Essentially, each tree is trained on a different subset of data and then for each split in a tree, a random subset of features is considered rather than all, and after training all decision trees, the random forest model makes predictions by combining their outputs by voting or averaging. A model was crafted for each city. The results for San Francisco suggested that neighborhoods within the Central police district would be the best location for a new store. Neighborhoods within this district include Chinatown, North Beach, Fisherman’s Wharf, the Financial District, and the three famous hills: Telegraph, Nob Hill, and Russian Hill. It should be noted that police district was used to determine possible locations for San Francisco due to the high number of neighborhoods in the city negatively impacting the accuracy of the model. Taking a look at the neighborhoods within the central police district, they do appear to have less incidents of crimes than others with the exception of the financial district. That being said, we would still highly recommend a strong loss prevention plan coupled with on-site security. The results for Baltimore suggested that the Southwest District would be the best location for a new store. Affectionately known by locals as Sowebo, this area of baltimore is home to historic sites and has been experiencing recent gentrification. As it increases in popularity, Sports Fans LLC would have an opportunity to become a longtime staple in an up and coming market. 



