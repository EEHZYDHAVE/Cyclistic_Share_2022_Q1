# Cyclistic_Share_2022_Q1
Cyclistic Share is a fictional company that sells bikes to two customer segments: subscribers and casual customers

<hr>

<br>

## Introduction
Welcome to the Cyclistic bike-share analysis case study! In this case study, I will perform many real-world tasks of a junior data
analyst. Working a fictional company, Cyclistic, and meeting different characters and team members,I will follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act to answer the
key business questions.

**Background Information**

Cyclistic is a bike-share company founded in 2016 in Chicago, Illinois. The company has more than 5,800 bicycles and 600 docking stations in the Chicago metropolitan area. Besides traditional bicycles and e-bikes, Cyclistic offers reclining bikes, hand tricycles and cargo bikes to make bike-sharing more inclusive to people with disabilities. The pricing plans offered are single-ride passes, full-day passes, and annual memberships.

<br>

## ASK
Problem to be solved: Design marketing strategies aimed at converting casual riders into annual members to increase profitability

**Guiding Question**


<ul>
  <li>How do annual members and casual riders use Cyclistic bikes differently?
</li>
  <li>Why would casual riders buy Cyclistic annual memberships? 
</li>
  <li>How can Cyclistic use digital media to influence casual riders to become members?
</li>
</ul>

**Key Task**
<ul>
  <li>maximizing the number of annual members
</li>
  <li>To understand why casual and annual members differs
</li>
  <li>Design marketing strategies aimed at converting casual riders into annual members</li>
</ul>

**Key Stakeholder**
<ul>
  <li>Director of Marketing(Management)
</li>
  <li>Cyclistic marketing analytics team
</li>
  <li>Cyclistic executive team
</li>
</ul>

<br>

## PREPARE
The dataset belongs to Cyclistic Bike Share. The dataset used for this analysis was a Cyclistic historical trip for the first quarter of 2022. The data has been made available by Motivate International Inc. under this <a href="https://www.divvybikes.com/data-license-agreement" color="blue">lincense</a>. This is public data that can be used to explore how different customer types are using Cyclistic bikes. But the data-privacy issues prohibit from using riders’ personally identifiable information
The data files were uploaded to google drive and stored in an external hard drive.

<br>

## PROCESS
The data was uploaded to Big Query due to the immerse of the dataset for cleaning. 

**Data Exploration**
<ul>
  <li>Check if the dataset has the same schema to ensure aggregation where necessary. </li>
  <li>All tables were confirmed to have the same schema.
</li>
  <li>Null values exist in start_station_name, start_station_id, end_station_name and end_station_id.
</li>
  <li>Checked for ride_length less than 1 minute and more than 24 hours, omit these rows.
</li>
  <li>There exist docked bike, filter these out
</li>
  <li>Where start_station_name(end_station_name) is null, corresponding start_station_id(end_station_id) is null also.
</li>
  <li>There exist no typo in column name for all tables
</li>
</ul>

**Data Aggregation**

<a href="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/main/data%20aggregation.sql" color="blue">SQL query</a>
<ul>
  <li>Table 1-4 were aggregated using UNION ALL
</li>
  <li>Start_lat, start_lng,end_lat and end_lng were filtered out.</li>
</ul>

**Data Cleaning**

<a href="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/main/data%20cleaning%20and%20validation.sql" color="blue">SQL query</a>
<ul>
  <li>extracted day of the week
</li>
  <li>created trip duration in minute
</li>
  <li>filtered out trip less than 1 minute and greater than 24 hours
</li>
  <li>filtered out null values in start station and end station names
</li>
  <li>Excluded start_lat, end_lat, start_lng and end_lng
</li>
</ul>

**Data Validation**

<a href="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/main/data%20cleaning%20and%20validation.sql" color="blue">SQL query</a>

Confirm if there still exist any null values
Ensured that number of data  clean data = original data - filtered data

<br>

## ANALYSIS
**Key Takeaway**: Casual riders take longer trips than annual members, and they prefer classic bikes. However, the top 5 stations used by casual riders are completely different from the top 5 stations used by annual members.Annual member type also preferred classic bike type
<ul>
  <li>The average trip duration is more in the casual rider type section. With a figure of  21.98(approximately twice of the annual member), shows us at a quick glance they engage in longer trip
</li>
  <li>Further inspection shows casual riders travels as twice as annual member rider on any typical day of the week
</li>
  <li>Both annual members and casual users preferred classic bikes more. But among classic bike users, a greater proportion were annual member users.
</li>
  <li>From the viewpoint of the trip in both the start station and end station of the combined rider type, casual riders are distributed around <i>Streeter Dr & Grand Ave, Millennium Park</i> and <i>DuSable Lake Shore Dr & Monroe St</i>. Annual member type, while being evenly distributed among other stations, are densely concentrated at <i> Ellis Ave & 60th St and University Ave & 57th St</i>.
</li>
  <li><i>Kingsbury St & Kinzie St, Clinton St & Washington Blvd,  Ellis Ave & 60th St,  University Ave & 57th St</i> and <i>Clinton St & Madison St</i> are top stations associated with the annual member type.
</li>
  <li><i>Streeter Dr & Grand Ave, Michigan Ave & Oak St, Shedd Aquarium, Millennium Park and DuSable Lake Shore Dr & Monroe St</i> are top stations associated with the casual riders type.
</li>
</ul>

<br>

## SHARE
**Average Trip Duration By Rider**

The average trip duration is more in the casual rider type section
Recommendation: Further analysis should be done on why casual customers engage in longer trips, then the marketing campaign can be targeted to apply such to the annual member type to get more subscribers

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/Sheet1?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View Average trip duration Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/Average_trip_duration.png">
</figure>


**Bike Types**

Classic bikes are preferred more by both annual members and casual members. However, annual members were much more likely to switch from electric bikes to classic bikes than casual riders. There was a 100%+ increase in annual members switching to classic bikes, compared to a 47% increase in casual riders switching to classic bikes.
Recommendation: The market analyst team should consider classic bikes when designing marketing strategies, as customers are more familiar with this bike type

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/Bike_Type?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View Bike Types Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/Bike_Type.png">
</figure>


**Start Station**

The<i> Millennium Park, Daley Center Plaza, Theater on the Lake</i> and <i>900 W Harrison st</i> are common among both Rider type. Casual members are most dense around the <i>Millennium park, Shedd Aquarium</i> and <i>Theater on the Lake</i>

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/Start_Station?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View Start Station Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/Start_Station.png">
</figure


**End Station**

The <i>Millennium Park, Daley Center Plaza, Theater on the Lake</i> and <i>900 W Harrison st</i> are common among both Rider type. Casual members are most dense around the <i>Millennium park, Shedd Aquarium</i> and <i>Theater on the Lake</i>
Recommendation: The marketing team should target casual riders at <i>Millennium Park, Shedd Aquarium</i>, and <i>Theater on the Lake first</i> when trying to convert casual members to annual members.

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/End_Station?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View End Station Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/End_Station.png">
</figure>


**Day of Week**

There is an evenly distribution of trip duration and number of trips across each day of the week.
Recommendation: The day of the week is less important when distinguishing annual members from casual riders, so marketing campaigns can be less restrictive in considering this factor.

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/Sheet5?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View Day of Week Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/Start_Day.png">
</figure>


**Trip Distance**

Casual riders typically have longer trip durations than annual members. The median trip duration for casual riders is 266 minutes (4 hours and 26 minutes), while the median trip duration for annual members is 234 minutes (3 hours and 54 minutes). There are also a few annual members with very long trip durations (outliers).
Recommendation: Analyze why casual riders engage in longer trips than annual members.

<figure>
  <legend> <a href="https://public.tableau.com/views/Cyclistic_Share_16990639629980/Sheet8?:language=en-GB&:display_count=n&:origin=viz_share_link" color="blue">View Trip Duration Visualization on Tableau</a> </legend>
  <img src="https://github.com/EEHZYDHAVE/Cyclistic_Share_2022_Q1/blob/Visuals/Trip_Duration.png">
</figure>

<br>

## ACT
Based on the analysis, the following recommendation are suggestion
<ul>
  <li>Analyze why casual riders engage in longer trips than annual members.
</li>
  <li>Further analysis should be done on why casual customers engage in longer trips, then the marketing campaign can be targeted to apply such to the annual member type to get more subscribers
</li>
  <li>The day of the week is less important when distinguishing annual members from casual riders, so marketing campaigns can be less restrictive in considering this factor.
</li>
  <li>The marketing team should target casual riders at Millennium Park, Shedd Aquarium, and Theater on the Lake first when trying to convert casual members to annual members.
</li>
</ul>

<br>

*Here are some next steps for further analysis:*

<i>Further analysis of price per trip and by bike type could reveal why casual riders engage in longer trips and use specific stations.</i>
<i>Gathering more monthly data could help identify trends at different times of the year, which would be useful for developing marketing strategies.</i>

<hr>

<br>

<strong>Project Reflection</strong>

This is my first data analyst project were I followed a structured process from the initial problem to the recommendation phase. I also gained more familiarity with Google BigQuery for SQL, Google Sheets, and more Tableau functionalities.Also got more familiar with thought process of a data analyst 














