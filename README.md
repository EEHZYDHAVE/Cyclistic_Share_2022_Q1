# Cyclistic_Share_2022_Q1
Cyclistic Share is a fictional company that sells bikes to two customer segments: subscribers and casual customers

## Introduction
Welcome to the Cyclistic bike-share analysis case study! In this case study, I will perform many real-world tasks of a junior data
analyst. Working a fictional company, Cyclistic, and meeting different characters and team members,I will follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act to answer the
key business questions.

**Background Information**

Cyclistic is a bike-share company founded in 2016 in Chicago, Illinois. The company has more than 5,800 bicycles and 600 docking stations in the Chicago metropolitan area. Besides traditional bicycles and e-bikes, Cyclistic offers reclining bikes, hand tricycles and cargo bikes to make bike-sharing more inclusive to people with disabilities. The pricing plans offered are single-ride passes, full-day passes, and annual memberships.

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

## PREPARE
The dataset belongs to Cyclistic Bike Share. The dataset used for this analysis was a Cyclistic historical trip for the first quarter of 2022. The data has been made available by Motivate International Inc. under this <a href="https://www.divvybikes.com/data-license-agreement" color="blue">lincense</a>. This is public data that can be used to explore how different customer types are using Cyclistic bikes. But the data-privacy issues prohibit from using riders’ personally identifiable information
The data files were uploaded to google drive and stored in an external hard drive.

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
<ul>
  <li>Table 1-4 were aggregated using UNION ALL
</li>
  <li>Start_lat, start_lng,end_lat and end_lng were filtered out.</li>
</ul>








